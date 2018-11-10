require "administrate/base_dashboard"

class VaccinationCalendarDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    hospital: Field::BelongsTo,
    new_born: Field::BelongsTo,
    id: Field::Number,
    at_birth: Field::Boolean,
    six_weeks: Field::Boolean,
    ten_weeks: Field::Boolean,
    fourteen_weeks: Field::Boolean,
    six_months: Field::Boolean,
    nine_months: Field::Boolean,
    one_year: Field::Boolean,
    recent_appointment: Field::Boolean,
    at_birth_d: Field::DateTime,
    six_weeks_d: Field::DateTime,
    ten_weeks_d: Field::DateTime,
    fourteen_weeks_d: Field::DateTime,
    six_months_d: Field::DateTime,
    nine_months_d: Field::DateTime,
    one_year_d: Field::DateTime,
    recent_appointment_d: Field::DateTime,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :hospital,
    :new_born,
    :id,
    :at_birth,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :hospital,
    :new_born,
    :id,
    :at_birth,
    :six_weeks,
    :ten_weeks,
    :fourteen_weeks,
    :six_months,
    :nine_months,
    :one_year,
    :recent_appointment,
    :at_birth_d,
    :six_weeks_d,
    :ten_weeks_d,
    :fourteen_weeks_d,
    :six_months_d,
    :nine_months_d,
    :one_year_d,
    :recent_appointment_d,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :hospital,
    :new_born,
    :at_birth,
    :six_weeks,
    :ten_weeks,
    :fourteen_weeks,
    :six_months,
    :nine_months,
    :one_year,
    :recent_appointment,
    :at_birth_d,
    :six_weeks_d,
    :ten_weeks_d,
    :fourteen_weeks_d,
    :six_months_d,
    :nine_months_d,
    :one_year_d,
    :recent_appointment_d,
  ].freeze

  # Overwrite this method to customize how vaccination calendars are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(vaccination_calendar)
  #   "VaccinationCalendar ##{vaccination_calendar.id}"
  # end
end
