class HospitalsController < ApplicationController
  before_action :require_hospital, except: [:create, :new]
  before_action :set_tab

  layout :resolve_layout

  def index
    @menu = 'hospitals'
  end

  def new
    @hospital = Hospital.new
  end

  def show
    @menu = 'view-profile'
  end

  def create
    @hospital = Hospital.new(hospital_params)

    if verify_recaptcha(model: @hospital) && @hospital.save
      flash[:notice] = I18n.translate "flash.account_created"
      redirect_to sign_in_path
    else
      render "hospitals/new"
    end
  end

  def edit
    @menu = 'edit-profile'
    @hospital = current_hospital
  end

  def update
    @menu = 'edit-profile'
    @hospital = Hospital.find(params[:id])

    if @hospital.update(update_params)
      flash[:notice] = I18n.translate "flash.updated"
      redirect_to hospital_path
    else
      puts @hospital.errors.full_messages, "the messages wer here"
      render "hospitals/edit"
    end
  end

  private

  def resolve_layout
    case action_name
    when "new", "create"
      "pages"
    else
      "hospital"
    end
  end

  def hospital_params
    params.require(:hospital).permit(:username, :name, :phone_number, :email, :password, :password_confirmation, :verified?, :email_verified?, :council_id)
  end

  def update_params
    params.require(:hospital).permit(:username, :name, :phone_number, :email, :password, :password_confirmation)
  end

  def set_tab
    @tab = 'profile'
  end
end

### use when site is ready
# if verify_recaptcha(model: @hospital) && @hospital.save

# else
#   render "hospitals/new"
# end
# <%= f.label :base, 'Solve the reCAPTCHA below' %>
# <div class="captcha-container">
#   <%= recaptcha_tags %>
# </div>
