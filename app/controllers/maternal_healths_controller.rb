class MaternalHealthsController < ApplicationController 
  before_action :require_hospital, :set_tab
  # before_action :require_agent_or_hospital, :council_handler, only: [:show]

  layout :resolve_layout

  def index 
  end

  def new
    @new_born = NewBorn.find(params[:new_born_id])
    @maternal_health = MaternalHealth.new
  end

  def create 
    @new_born = NewBorn.find(params[:new_born_id])
    @maternal_health = MaternalHealth.new(maternal_health_params)
    @maternal_health.age = @new_born.c_db.year - @new_born.m_db.year

    if @new_born.maternal_health
      flash[:notice] = I18n.translate "flash.already_registered" 
      redirect_to new_born_path(id: @new_born.id, new_born: "added")
    elsif @maternal_health.save 
      flash[:notice] = I18n.translate "flash.registered"
      redirect_to new_born_path(id: @new_born.id, new_born: "added")
    else 
      render "new"
    end
  end

  def show
    @maternal_health = MaternalHealth.find(params[:id])
    @new_born = NewBorn.find(params[:new_born_id])
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

  def set_tab
    @tab = 'new-borns'
    @menu = 'nb-rec'
  end

  def maternal_health_params 
    params.require(:maternal_health).permit(:hospital_id, :new_born_id, :birth_attendant, :place_of_delivery , :gestational_age, :duration_of_labour, :labour_on_set, :type_of_delivery, :placenta_separation, :placenta, :membranes, :nature_of_cord, :vessels, :blood_loss, :source_of_pph, :episiotomy, :laceration, :sutures, :uterus, :mothers_condition, :post_partum_complications)
  end
end




# <%= f.label :method_of_resuscitation , t('.method_of_resuscitation') %>
#     <%= f.select :method_of_resuscitation, options_for_select([[t('.choose_method'), choice_factor], [t('.np'), "np"], [t('.ccc'), "ccc"], [t('.ocmc'), "ocmc"], [t(".dmva"), "dmva"]], @infant_health.method_of_resuscitation), {}, { class: 'sex chosen-select' } %>
    # <%= f.label :blood_pressure, t('maternal_healths.blood_pressure') %>
    # <%= f.text_field :blood_pressure %>
    # <%= f.label :pulse, t('maternal_healths.pulse') %>
    # <%= f.text_field :pulse %>
    # <%= f.label :respiratory_rate, t('maternal_healths.respiratory_rate') %>
    # <%= f.text_field :respiratory_rate %>
    # <%= f.label :temperature, t('maternal_healths.temperature') %>
    # <%= f.text_field :temperature %>
# <%= f.label :delivery_method, t('maternal_healths.delivery_method') %>
#     <%= f.select :delivery_method, options_for_select([
#     [t('maternal_healths.choose'), choice_factor], 
#     [t('maternal_healths.mothers_effort'), "mothers_effort"], 
#     [t('maternal_healths.fundal_pressure'), "fundal_pressure"],
#     [t('maternal_healths.controlled_cord_tracting'), "controlled_cord_tracting"]], @maternal_health.delivery_method), {}, { class: 'sex chosen-select' } %>