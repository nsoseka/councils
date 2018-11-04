class ClinicController < ApplicationController 
  before_action :require_hospital, :set_tab

  layout :resolve_layout

  def due_today 
    @menu = "due"
    @pagy, @appointments = pagy Appointment.by_dates(Date.today, Date.today).includes(:new_born)
  end

  # handle errors in sucker punch exceptionnotification gem with sucker punch and clear the hospitalreminder
  # in the database

  def one_day_upcoming 
    @menu = "one-day"
    @period = params[:due_in]
    @status = HospitalReminder.find_by(hospital_id: current_hospital.id, period: "one_day", date: Date.today)
    @appointment_stats = {}
    @pagy, @appointments = pagy Appointment.by_dates(1.day.from_now, 1.day.from_now).includes(:new_born).where(kept: false)

    @appointments.each do |appointment|
      @appointment_stats[appointment.purpose] = @appointment_stats[appointment.purpose] ? @appointment_stats[appointment.purpose] + 1 : 1
    end

    puts @appointment_stats, "the stats are here"
  end

  def update_appointment
    purpose = params[:purpose]
    date = params[:date]
    weight = params[:weight]
    height = params[:height]
    new_born_id = params[:new_born_id]

    @appointment = Appointment.find(params[:appointment_id])
    @vaccination_calendar = VaccinationCalendar.find_by(new_born_id: new_born_id)
    @appointment.kept = !@appointment.kept

    puts "saw the calendar", @vaccination_calendar

    if @appointment.purpose == purpose
      @appointment.kept = false 
      @appointment.date = date ? date : @appointment.date
    end

    if purpose == "88888888" || date.empty?
      @success = false
      @message = I18n.translate "sweet_alert.indicate_values"
    else
      @appointment2 = Appointment.where(new_born_id: new_born_id, purpose: purpose).first_or_create!(new_born_id: new_born_id, purpose: purpose, date: date, hospital: current_hospital)
      @success = true
      smart_update(purpose, date)
    end
  end

  def reminder
    @period = params[:due_in]
    @status = HospitalReminder.find_by(hospital_id: current_hospital.id, period: @period, date: Date.today)
    @message = I18n.translate "sweet_alert.being_sent"
    @mes1 = I18n.translate "sweet_alert.on_the_way"

    if @status 
      @message = I18n.translate "sweet_alert.already_informed"
      @mes1 = I18n.translate "sweet_alert.informed"
    else
      set = @period == "three_days" ? 3.day.from_now : 1.day.from_now
      @appointments = Appointment.by_dates(set, set).includes(:new_born).where(kept: false) 
      hospital_reminder = HospitalReminder.new(hospital: current_hospital, period: @period, date: Date.today, count: @appointments.length)

      Appointment.send_reminders!(@appointments, @period, hospital_reminder)
    end
  end

  def find 
    @menu = "clinic-search"
  end

  def search 
  end

  private
   
  def set_tab
    @tab = "clinic"
  end

  def resolve_layout 
    case action_name 
    when "show"
      current_agent ? "application" : "hospital"
    else
      "hospital"
    end
  end

  def smart_update(purpose, date)
    ApplicationRecord.transaction do
      @appointment.save! && @appointment2.update!(purpose: purpose, date: date) && @vaccination_calendar.update!(purpose + "_d" => date, @appointment.purpose => @appointment.kept)
    end
  end
end


  # <p class="remind"><a href="#">Send a reminder</a></p>
  #   <p class="cancel">
  #     <a href="#">Cancel and notify all</a>
  #   </p>

#   <ul class="items">
  # <% if @appointments.empty? %>
  #   <h3><%= t('.no_appointments') %></h3>
  # <% else %>
  #   <h1 class="reminder">
  #     <%= link_to reminder_path(due_in: 'one_day'), remote: true, method: 'patch', data: { disable_with: "#{t('sweet_alert.sending_reminders')}", disable: true } do %>
  #       Send a reminder to all
  #     <% end %>
  #   </h1>

  #   <%== pagy_nav(@pagy) %>
  #   <% @appointments.each do |appointment|%>
  #     <%= render 'upcoming_appointment', { appointment: appointment, new_born: appointment.new_born } %>
  #   <% end %>
#   <% end %>
# </ul>
