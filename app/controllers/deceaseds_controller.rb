class DeceasedsController < ApplicationController
  before_action :require_hospital, :set_tab, except: [:show]
  before_action :require_agent_or_hospital, :council_handler, only: [:show]

  layout :resolve_layout

  def index 
    @menu = 'd-all'
    @pagy, @deceaseds = pagy Deceased.order('created_at DESC').limit(50).where(hospital_id: current_hospital.id).includes(:cause_of_death)
  end

  def show 
    @menu = 'd-all'
    @deceased = Deceased.includes(:cause_of_death).find(params[:id])
    @deceased_added = params[:deceased]
    @tab = "deceaseds"

    if current_agent
      @menu = 'latest'
      @tab = 'deaths'
    end
  end 

  def new 
    @menu = 'd-new'
    @deceased = Deceased.new
    @deceased.d_pd = current_hospital.name
  end

  def create
    @menu = 'd-new'
    @deceased = Deceased.new(deceased_params)

    @deceased.council = current_hospital.council

    if @deceased.save
      flash[:notice] = I18n.translate "flash.registered"
      redirect_to deceased_path(id: @deceased.id, deceased: "added")
      
    else
      render "deceaseds/new"
    end
  end

  def find 
    @menu = 'd-find'
    @search_query = nil
  end

  def search
    @menu = 'd-find'
    @search_query = params[:search_query]
    @pagy, @deceaseds = pagy Deceased.ransack(d_name_or_f_name_or_m_name_cont_any: @search_query.split(' ')).result.where(hospital_id: current_hospital.id)
  end

  private

  def deceased_params
    params.require(:deceased).permit(:hospital_id, :d_name, :d_db , :d_pb, :d_dd, :d_pd, :d_job , :marital_status, :sex, :f_name, :f_res, :m_name , :m_res, :num_children, :contact, :contact_tel, :contact_lang)
  end

  def set_tab
    @tab = 'deceaseds'
  end

  def resolve_layout 
    case action_name 
    when "show"
      current_agent ? "application" : "hospital"
    else
      "hospital"
    end
  end

  def council_handler
    set_up_council_notifiers if current_agent
  end
end

