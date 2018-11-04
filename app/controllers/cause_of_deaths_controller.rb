class CauseOfDeathsController < ApplicationController
  before_action :require_hospital, :set_tab
  # before_action :require_agent_or_hospital, :council_handler, only: [:show]

  layout :resolve_layout

  def index 
  end

  def new
    @deceased = Deceased.find(params[:deceased_id])
    @cause_of_death = CauseOfDeath.new
  end

  def create 
    @cause_of_death = CauseOfDeath.new(cause_of_death_params)
    @deceased = Deceased.find(params[:deceased_id])

    if @deceased.cause_of_death
      flash[:notice] = I18n.translate "flash.already_registered"
      redirect_to deceased_path @deceased
    elsif @cause_of_death.save 
      flash[:notice] = I18n.translate "flash.registered"
      redirect_to deceased_path @deceased
    else
      puts @cause_of_death.errors.full_messages, "errors"
      render "new"
    end
  end

  def show
    @cause_of_death = CauseOfDeath.find(params[:id])
    @deceased = Deceased.find(params[:deceased_id])
  end

  private

  def resolve_layout 
    case action_name 
    when "show"
      current_agent ? "application" : "hospital"
    else
      "hospital"
    end
  end

  def cause_of_death_params 
    params.require(:cause_of_death).permit(:hospital_id, :deceased_id, :cause, :sex, :age)
  end

  def set_tab
    @tab = 'deceaseds'
    @menu = 'd-all'
  end
end




