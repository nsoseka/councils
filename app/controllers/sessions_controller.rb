class SessionsController < ApplicationController
  before_action :require_agent_or_hospital, only: [:destroy]

  layout 'pages'

  def new
    redirect_to home_path if current_agent
  end

  def create
    watcher_status = params[:watcher]

    if watcher_status
      watcher = Watcher.find_by(name: params[:username])
      verified_captcha = verify_recaptcha(model: watcher)

      if !verified_captcha
        flash.now[:error] = I18n.translate "flash.solve_captcha"
        redirect_to sign_in_path
      elsif watcher && watcher.authenticate(params[:password])
        session[:watcher_id] = watcher.id
        redirect_to admin_root_path
      else
        flash.now[:error] = I18n.translate "flash.wrong_credentials"
        redirect_to sign_in_path
      end
    else
      agent = Agent.find_by(username: params[:username])
      hospital = Hospital.find_by(username: params[:username])

      if (agent && !verify_recaptcha(model: agent)) || (hospital && !verify_recaptcha(model: hospital))
        flash.now[:error] = I18n.translate "flash.solve_captcha"
        redirect_to sign_in_path
      elsif agent && agent.authenticate(params[:password])
        if agent.verified 
          session[:agent_id] = agent.id
          redirect_to home_path, notice: "#{I18n.translate('flash.login')}"
        else 
          flash.now[:error] = I18n.translate "flash.not_verified"
          redirect_to sign_in_path
        end
      elsif hospital && hospital.authenticate(params[:password])
        if hospital.verified
          session[:hospital_id] = hospital.id
          redirect_to health_unit_home_path, notice: "#{I18n.translate('flash.login')}"
        else
          flash.now[:error] = I18n.translate "flash.not_verified"
          redirect_to sign_in_path
        end
      else
        flash.now[:error] = I18n.translate "flash.wrong_credentials"
        redirect_to sign_in_path
      end
    end
  end

  def destroy
    session[:agent_id] = nil
    session[:hospital_id] = nil
    session[:watcher_id] = nil
    puts session[:watcher_id], "boss"
    redirect_to root_path, notice: "#{I18n.translate('flash.logout')}"
  end
end
