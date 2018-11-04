class SessionsController < ApplicationController
  before_action :require_agent_or_hospital, only: [:destroy]

  layout 'pages'

  def new
    redirect_to home_path if current_agent
  end

  def create
    agent = Agent.find_by(username: params[:username])
    hospital = Hospital.find_by(username: params[:username])

    if agent && agent.authenticate(params[:password])
      session[:agent_id] = agent.id
      redirect_to home_path, notice: "#{I18n.translate('flash.login')}"
    elsif hospital && hospital.authenticate(params[:password])
      session[:hospital_id] = hospital.id
      redirect_to health_unit_home_path, notice: "#{I18n.translate('flash.login')}"
    else
      flash.now[:error] = I18n.translate "flash.wrong_credentials"
      redirect_to sign_in_path
    end
  end

  def destroy
    session[:agent_id] = nil
    session[:hospital_id] = nil
    redirect_to root_path, notice: "#{I18n.translate('flash.logout')}"
  end
end
