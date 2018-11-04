class DeathsController < ApplicationController
  before_action :set_tab, :require_agent, :set_up_council_notifiers

  def index
    @pagy, @deaths = pagy Death.all.where(council: current_agent.council)
    @menu = 'index'
  end

  def show
    @death = Death.find(params[:id])
    @menu = 'search'
  end

  def new
    @menu = 'new'
    @death = Death.new
  end

  def create
    @menu = 'new'
    @death = Death.new(death_params)

    if @death.save
      flash[:notice] = I18n.translate "flash.certificate_added"

      redirect_to deaths_path
    else
      render 'deaths/new'
    end
  end

  def search
    @menu = 'search'
    @search_query = params[:search_query]
    @pagy, @deaths = pagy Death.ransack(surname_or_given_name_or_father_or_mother_cont_any: @search_query.split(' ')).result
    @pagy2, @deceaseds = pagy Deceased.ransack(d_name_or_f_name_or_m_name_cont_any: @search_query.split(' ')).result.where(council: current_agent.council)

    if params[:page].to_i > 1 
      @deaths = @pagy.count <= params[:items].to_i ? [] : @deaths
      @deceaseds = @pagy2.count <= params[:items].to_i ? [] : @deceaseds
    end
  end

  def find
    @menu = 'search'
    @search_query = nil
  end

  def latest
    @menu = 'latest'
    @pagy, @deceaseds = pagy current_agent.council.deceaseds.today
  end

  def set_tab
    @tab = "deaths"
  end 

  private

  def death_params
    params.require(:death).permit(:council_id, :certificate_number, :surname, :given_name, :date_born,:place_born, :mr, :date_died, :place_died , :sex, :marital_status, :occupation, :residence,:father, :mother, :date_drawn, :declaration, :d_name , :d_occupation, :d_capacity, :fw_name, :fw_occupation, :fw_residence, :sw_name, :sw_occupation, :sw_residence, :attestator, :registrar, :secretary, :date_made)
  end
end



