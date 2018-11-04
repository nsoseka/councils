class Appointment < ApplicationRecord
  CHOICE_FACTOR  = '88888888' 
  belongs_to :hospital 
  belongs_to :new_born

  before_create :set_contact

  validates_presence_of :date, :purpose, :new_born_id, :hospital_id

  validate :choice_made

  scope :by_dates, ->(start_date, end_date) { self.order("kept DESC").where(date: start_date..end_date) }

  def choice_made
    if purpose.present? && purpose == CHOICE_FACTOR
      errors.add(:purpose, :choose)
    end
  end

  def set_contact 
    self.contact = self.new_born.m_tel
  end

  def self.send_reminders!(appointments, period, hospital_reminder)
    message = self.craft_message(period)
    puts message, appointments.length
    AppointmentReminderJob.perform_async(appointments, message, hospital_reminder)
  end

  def self.craft_message(period)
    return period == "one_day" ? "Your child's clinic appointment is tomorrow. Its very important | Le rendez-vous à la clinique de votre enfant est demain. c'est très important" : "Your child has a clinic appointment with us is on the #{set.strftime('%d-%m-%Y')}. Votre enfant a un rendez-vous à la clinique avec nous #{set.strftime('%d-%m-%Y')}"
  end
end

