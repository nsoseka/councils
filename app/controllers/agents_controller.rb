class AgentsController < ApplicationController
  before_action :require_agent, except: [:create, :new]
  before_action :set_tab, :set_up_council_notifiers, except: [:new, :create]

  layout :resolve_layout

  def index
    @menu = 'agents'
  end

  def new 
    @agent = Agent.new
  end

  def show 
    @menu = 'view-profile'
  end

  def create
    @agent = Agent.new(agent_params)
    @council = Council.find_by(id: council_finder[:council_id], code: council_finder[:code])

    puts council_finder,'real potators'

    if @council.nil?
      flash[:notice] = I18n.translate "flash.council_buy"
      render "agents/new"

    elsif @agent.save
      flash[:notice] = I18n.translate "flash.account_created"
      redirect_to sign_in_path
    else
      render "agents/new"
    end
  end

  def edit
    @menu = 'edit-profile'
    @agent = current_agent
  end

  def update
    @menu = 'edit-profile'
    @agent = Agent.find(params[:id])

    if @agent.update(update_params)
      flash[:notice] = I18n.translate "flash.updated"
      redirect_to agent_path
    else
      render "agents/edit"
    end
  end

  private

  def resolve_layout
    case action_name
    when "new", "create"
      "pages"
    else
      "application"
    end
  end

  def agent_params
    params.require(:agent).permit(:username, :full_names, :phone_number, :email, :password, :password_confirmation, :verified?, :email_verified?, :council_id, :code)
  end

  def update_params
    params.require(:agent).permit(:username, :full_names, :phone_number, :email, :password, :password_confirmation, :code)
  end

  # check extract params data used to get a specific council
  def council_finder
    params.require(:agent).permit(:code, :council_id)
  end

  def set_tab
    @tab = 'profile'
  end
end

### use when site is ready
# if verify_recaptcha(model: @agent) && @agent.save

# else
#   render "agents/new"
# end
# <%= f.label :base, 'Solve the reCAPTCHA below' %>
# <div class="captcha-container">
#   <%= recaptcha_tags %>
# </div>
