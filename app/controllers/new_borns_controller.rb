class NewBornsController < ApplicationController
  before_action :require_hospital, :set_tab, except: [:show]
  before_action :require_agent_or_hospital, :council_handler, only: [:show]

  layout :resolve_layout

  def index 
    # @new_borns = NewBorn.today.where(hospital_id: current_hospital.id)
    @pagy, @new_borns = pagy NewBorn.order('created_at DESC').limit(50).where(hospital_id: current_hospital.id).includes(:vaccination_calendar, :infant_health, :maternal_health, :appointments)
    @menu = 'nb-rec'
  end

  def show 
    @menu = 'nb-rec'
    @new_born = NewBorn.find(params[:id])
    @new_born_added = params[:new_born]

    @tab = "new-borns"
    
    if current_agent
      @menu = 'latest-b'
      @tab = 'births'  
    end
  end

  def new 
    @menu = 'nb-new'
    @new_born = NewBorn.new
    @new_born.generate_child_code
    @new_born.c_pb = current_hospital.name
  end

  def create
    @menu = 'nb-new'
    @new_born = NewBorn.new(new_born_params)

    @new_born.council = current_hospital.council

    if create_calendar_and_new_born
      flash[:notice] = I18n.translate "flash.registered"
      redirect_to new_born_path(id: @new_born.id, new_born: "added")
      
    else
      render 'new_borns/new'
    end
  end

  def find 
    @menu = 'nb-find'
    @search_query = nil 
  end

  def search 
    @menu = 'nb-find'
    @search_query = params[:search_query]
    @pagy, @new_borns = pagy NewBorn.ransack(c_name_or_child_code_or_f_name_or_m_name_cont_any: @search_query.split(' ')).result.where(hospital_id: current_hospital.id)
  end

  def clinic_sessions
    @menu = 'nb-rec'
    @new_born = NewBorn.find(params[:id])
    @appointments = @new_born.appointments
  end


  private
  
  def new_born_params
    params.require(:new_born).permit(:hospital_id, :c_name, :c_db, :c_pb, :sex, :f_name , :f_res, :f_db , :f_pb, :f_tel, :m_name , :m_res, :m_db , :m_pb, :m_tel, :attended_clinic, :child_code)
  end

  def set_tab
    @tab = 'new-borns'
  end

  def resolve_layout 
    case action_name 
    when "show"
      current_agent ? "application" : "hospital"
    else
      "hospital"
    end
  end

  def create_calendar_and_new_born
    ApplicationRecord.transaction do
      @new_born.save && VaccinationCalendar.create(hospital: current_hospital, new_born: @new_born)
    end
  end

  def council_handler
    set_up_council_notifiers if current_agent
  end
end


# add eye ear and dumb to abnormalities
# duration of labour 
# onset of labour - spontaneous, induced, augmented 
# art - yes, no 
# typee - nd, breech, cs, bba, other
# crn - yes, no 
# 3rd stage separation of the placenta - schultze, matthews duncan 
# placenta, complete incomplete
# membranes, complete, incomplete
# cord, normal, abnormal
# method of delivery, mothers effort, fundal pressure, controlled cord tracting
# blood loss
# cause of pph
# Uterine atony	70%
# Trauma	20%
# Retained tissue	10%
# Coagulopathy	1%
# episiotomy, true, false
# loceration 1, 2, 3
# absorbable surtures, non absorbable
# uterus, tonic, atonic
# BP
# P
# RR
# T
# general condition , satisfactory or unsatisfactory
# 
# 
# 
# 
# 
# 
# 
# 
# 



