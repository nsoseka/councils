class AppointmentsController < ApplicationController 
  before_action :require_hospital, :set_tab

  layout "hospital"

  def index 
     @set = {
      at_birth: "BCG, VPO 0",
      six_weeks: "DTC-HepB-Hib 1, VPO 1, Pneumo 13-1(PVC), ROTA 1",
      ten_weeks: "DTC-HepB-Hib 2, VPO 2, Pneumo 13-2, ROTA 2",
      fourteen_weeks: "DTC-HepB-Hib 3, VPO 3, *VPI*, Pneumo 13-3",
      six_months: "Vit A, *RR*",
      nine_months: "VAA",
      one_year: "Vit A"
    }

    @new_born = NewBorn.find(params[:new_born_id])
    @appointments = @new_born.appointments.order("date ASC")
  end

  def new 
    @new_born = NewBorn.find(params[:new_born_id])
    @appointment = Appointment.new
  end

  def show 
  end

  def create
    @new_born = NewBorn.find(params[:new_born_id])
    checker = Appointment.find_by(purpose: appointment_params[:purpose], new_born_id: params[:new_born_id])

    if checker 
      flash[:notice] = "☉ This baby already has an appointment to receive that vaccine"
      redirect_to new_born_appointments_path
    else
      @appointment = Appointment.new(appointment_params)
      @appointment.hospital = current_hospital 
      @appointment.new_born = @new_born
      
      if smart_create
        puts "how are you?"
        redirect_to new_born_appointments_path
      else
        render "new"
      end
    end
  end

  def edit 
    @new_born = NewBorn.find(params[:new_born_id])
    @appointment = Appointment.find(params[:id])
  end

  def update
    @appointment = Appointment.find(params[:id])
    kept_status = params.require(:appointment).permit(:kept)[:kept] == "true"
    @new_born = NewBorn.find(params[:new_born_id])

    if smart_update(kept_status)
      flash[:notice] = "appointment updated successfully"
      redirect_to new_born_appointments_path
    else
      render "edit"
    end
  end

  private

  def set_tab
    @tab = 'new-borns'
    @menu = 'nb-rec'
  end

  def appointment_params
    params.require(:appointment).permit(:date, :purpose, :new_born_id)
  end

  def smart_create
    ApplicationRecord.transaction do 
      @appointment.save && @new_born.vaccination_calendar.update(@appointment[:purpose] + "_d" => appointment_params[:date], "recent_appointment_d" => appointment_params[:date], "recent_appointment" => false)
    end
  end

  def smart_update(kept_status)
    ApplicationRecord.transaction do
      @appointment.update(date: appointment_params[:date], kept: kept_status) && @new_born.vaccination_calendar.update(@appointment.purpose + "_d" => appointment_params[:date], @appointment.purpose => kept_status)
    end
  end
end


