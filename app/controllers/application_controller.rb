class ApplicationController < ActionController::Base
  include Pagy::Backend
  
  protect_from_forgery with: :exception
  after_action :prepare_unobtrusive_flash
  before_action :set_locale
  
  def set_locale
    #logger.debug "* Accept-Language: #{request.env['HTTP_ACCEPT_LANGUAGE']}"
    # puts I18n.locale, 'the one i set myself'
    # session[:language] = params[:locale] ? params[:locale] : session[:language]
    # I18n.locale =  session[:language] ? session[:language] : I18n.locale ||I18n.default_locale
    I18n.locale = params[:locale] ||I18n.locale || I18n.default_locale
    # I18n.locale = :en
  end

  def require_agent
    redirect_to sign_in_path unless current_agent
  end

  def require_agent_or_hospital
    redirect_to sign_in_path unless current_agent || current_hospital || current_admin
  end

  def require_hospital
    redirect_to sign_in_path unless current_hospital
  end

  def require_admin 
    redirect_to sign_in_path unless current_admin
  end

  def current_admin 
    Watcher.find(session[:watcher_id]) if session[:watcher_id]
  end

  def current_agent
    Agent.find(session[:agent_id]) if session[:agent_id]
  end

  def current_hospital 
    Hospital.find(session[:hospital_id]) if session[:hospital_id]
  end

  def formated_date(time)
    I18n.localize time
    time.strftime("%Y-%b-%d")
  end

  def set_up_council_notifiers
    @deaths_notifier = current_agent.council.deceaseds.today.length
    @births_notifier = current_agent.council.new_borns.today.length
  end

  def formated_rf_doc(doc)
    reference = { 
      id: 'National Identity Card Number', 
      bc: 'Reference of Birth Certificate',
      dan: 'Reference of Document attesting nationality'
    }
    reference[doc.to_sym]
  end

  def default_url_options
    { locale: I18n.locale }
  end

  helper_method :current_agent, :formated_date, :formated_rf_doc, :current_hospital
end


# set up appoitnments menu, to show one day, three days and in a week
# set stats to show children born with defects and those with none, still births
# children born without prebirth maternal care
# missed appointments yesterday, 3 days and 1 month, year
# status of mother and delivery

# add causes of death
# set up stats to show cause distributions
# add disability cases
#infant health, #delivery and mother, #health calendar

# @hospital = Hospital.find(params[:id])

#       if @hospital.update_attribute(:verified, update_params[:verified])
#         flash[:notice] = I18n.translate "flash.updated"
#         redirect_to(
#           [namespace, requested_resource],
#           notice: translate_with_resource("update.success"),
#         )
#       else
#         puts @hospital.errors.full_messages, "the messages wer here"
#         render :edit, locals: {
#           page: Administrate::Page::Form.new(dashboard, requested_resource),
#         }
#       end