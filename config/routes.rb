Rails.application.routes.draw do
  default_url_options :host => "http://localhost:3000"

  root "pages#front"

  get "ui(/:action)", controller: "ui"
  get "pages(/:action)", controller: "pages"
  # get "blog(/:action)", controller: "blog"

  get 'home', to: "births#latest"
  get 'health_unit_home', to: "new_borns#index"
  get 'register', to: "agents#new"
  get 'new_account', to: "pages#new_account"
  get 'register_hospital', to: "hospitals#new"
  get 'sign_in', to: "sessions#new"
  get 'sign_out', to: "sessions#destroy"

  [:births, :marriages, :deaths, :new_borns, :deceaseds].each do |res|
    resources res , except: [:destroy, :update, :edit] do
      if [:deaths, :births].include?(res)
        collection do
          get :latest, to: "#{res.to_s}#latest"
        end
      elsif res == :marriages
        collection do
          get :divorced, to: "#{res.to_s}#divorced"
        end
      end
      collection do
        get :search, to: "#{res.to_s}#search"
        get :find, to: "#{res.to_s}#find"
      end
    end

    if [:new_borns, :deceaseds].include?(res)
      scope :statistics do
        get "#{res.to_s}_this_day".to_sym, to: "statistics##{res.to_s}_day"
        get "#{res.to_s}_this_week".to_sym, to: "statistics##{res.to_s}_week"
        get "#{res.to_s}_this_month".to_sym, to: "statistics##{res.to_s}_month"
        get "#{res.to_s}_this_year".to_sym, to: "statistics##{res.to_s}_year"
        get :unit_search, to: "statistics#unit_search"
        get :unit_find, to: "statistics#unit_find"
      end
    end
  end

  scope :statistics do
    [:births, :marriages, :deaths].each do |res|
      get "#{res.to_s}_this_day".to_sym, to: "statistics##{res.to_s}_day"
      get "#{res.to_s}_this_week".to_sym, to: "statistics##{res.to_s}_week"
      get "#{res.to_s}_this_month".to_sym, to: "statistics##{res.to_s}_month"
      get "#{res.to_s}_this_year".to_sym, to: "statistics##{res.to_s}_year"
    end
    get :search, to: "statistics#search"
    get :find, to: "statistics#find"
  end

  scope :blog do
    get :todays_deaths, to: "blog#todays_deaths"
    get :todays_births, to: "blog#todays_births"
    get :todays_marriages, to: "blog#todays_marriages"
    get :blog_search, to: "blog#search"
    get :blog_find, to: "blog#find"
    get :blog_home, to: "blog#home"
  end
  
  resources :sessions, only: [:create]
  resources :agents
  resources :hospitals
end


