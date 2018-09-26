class ApplicationController < ActionController::Base
  include Pagy::Backend
  
  protect_from_forgery with: :exception
  after_action :prepare_unobtrusive_flash
  before_action :set_locale
   
  def set_locale
    #logger.debug "* Accept-Language: #{request.env['HTTP_ACCEPT_LANGUAGE']}"
    puts I18n.locale, 'the one i set myself'
    session[:language] = params[:locale] ? params[:locale] : session[:language]
    I18n.locale =  session[:language] ? session[:language] : I18n.locale || I18n.default_locale
    I18n.locale = :fr
  end

  def require_agent
    redirect_to sign_in_path unless current_agent
  end

  def require_agent_or_hospital
    redirect_to sign_in_path unless current_agent || current_hospital
  end

  def require_hospital
    redirect_to sign_in_path unless current_hospital
  end

  def current_agent
    Agent.find(session[:agent_id]) if session[:agent_id]
  end

  def current_hospital 
    Hospital.find(session[:hospital_id]) if session[:hospital_id]
  end

  def formated_date(time)
    I18n.localize time
    #time.strftime("%Y-%b-%d")
  end

  def set_up_council_notifiers
    @deaths_notifier = current_agent.council.deceaseds.today.count
    @births_notifier = current_agent.council.new_borns.today.count
  end

  def formated_rf_doc(doc)
    reference = { 
      id: 'National Identity Card Number', 
      bc: 'Reference of Birth Certificate',
      dan: 'Reference of Document attesting nationality'
    }
    reference[doc.to_sym]
  end

  helper_method :current_agent, :formated_date, :formated_rf_doc, :current_hospital
end
