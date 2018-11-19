class VaccinationCalendarsController < ApplicationController
  before_action :require_hospital, :set_tab

  layout "hospital"

  def show 
    @new_born = NewBorn.friendly.find(params[:new_born_id])
    @vaccination_calendar = @new_born.vaccination_calendar
  end

  def update
    # sleep 2
    dates = [ 
      :at_birth, :six_weeks, :ten_weeks, :fourteen_weeks, :six_months, :nine_months, :one_year ]

    new_born = NewBorn.friendly.find(params[:new_born_id])
    
    @aspect = params[:aspect].to_sym
    @vaccination_calendar = VaccinationCalendar.find(params[:id])
    @appointment = Appointment.find_by(new_born_id: new_born.id, purpose: @aspect.to_s) || Appointment.create(purpose: @aspect.to_s, date: Date.today, new_born_id: new_born.id, hospital_id: current_hospital.id)

    @vaccination_calendar[@aspect] = !@vaccination_calendar[@aspect.to_s]
    @appointment.kept = @vaccination_calendar[@aspect.to_s]
    @vaccination_calendar[@aspect.to_s + "_d"] = Date.today

    @done = I18n.translate('vaccination.done_deal')
    @not_done = I18n.translate('vaccination.mark_done')
    puts "what is ithis", smart_update
    #  CVXN86148270
  end

  private

  def set_tab
    @tab = 'new-borns'
    @menu = 'nb-rec'
  end

  def smart_update
    ApplicationRecord.transaction do 
      @vaccination_calendar.save!
      @appointment.save!
    end
  end
end
