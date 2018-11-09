class InfantHealthsController < ApplicationController 
  before_action :require_hospital, :set_tab
  # before_action :require_agent_or_hospital, :council_handler, only: [:show]

  layout :resolve_layout

  def index 
  end

  def new
    @new_born = NewBorn.friendly.find(params[:new_born_id])
    @infant_health = InfantHealth.new
  end

  def create 
    @infant_health = InfantHealth.new(infant_health_params)
    @new_born = NewBorn.friendly.find(params[:new_born_id])

    if @new_born.infant_health
      flash[:notice] = I18n.translate "flash.already_registered" 
      redirect_to new_born_path(id: @new_born.id, new_born: "added")
    elsif @infant_health.save
      flash[:notice] = I18n.translate "flash.registered"
      redirect_to new_born_path(id: @new_born.id, new_born: "added")
    else
      puts @infant_health.errors.full_messages, "errors"
      render "new"
    end
  end

  def show
    @infant_health = InfantHealth.find(params[:id])
    @new_born = NewBorn.friendly.find(params[:new_born_id])
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

  def infant_health_params 
    params.require(:infant_health).permit(:hospital_id, :new_born_id, :term, :fsb , :msb, :still_birth_cause, :agpar_scor_1, :agpar_scor_5, :weight, :length, :head_circumference, :resuscitation, :abnormalities, :art)
  end

  def set_tab
    @tab = 'new-borns'
    @menu = 'nb-rec'
  end
end

# weight for age
# length for age
