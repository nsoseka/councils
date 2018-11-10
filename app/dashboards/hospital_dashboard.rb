require "administrate/base_dashboard"

class HospitalDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    council: Field::BelongsTo,
    new_borns: Field::HasMany,
    deceaseds: Field::HasMany,
    vaccination_calendars: Field::HasMany,
    appointments: Field::HasMany,
    infant_healths: Field::HasMany,
    maternal_healths: Field::HasMany,
    cause_of_deaths: Field::HasMany,
    hospital_reminders: Field::HasMany,
    administrative_region: Field::HasOne,
    sub_division: Field::HasOne,
    division: Field::HasOne,
    id: Field::Number,
    username: Field::Text,
    name: Field::Text,
    phone_number: Field::Text,
    email: Field::Text,
    password: Field::Text,
    password_confirmation: Field::Text,
    password_reset: Field::Text,
    password_digest: Field::Text,
    password_reset_date: Field::DateTime,
    verified: Field::Boolean,
    email_verified: Field::Boolean,
    code: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :council,
    :username,
    :name,
    :phone_number
    # :new_borns,
    # :deceaseds,
    # :vaccination_calendars,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :council,
    :id,
    :username,
    :name,
    :phone_number,
    :email,
    :password,
    :password_confirmation,
    :password_reset,
    :password_digest,
    :password_reset_date,
    :verified,
    :email_verified,
    :code,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :council,
    # :new_borns,
    # :deceaseds,
    # :vaccination_calendars,
    # :appointments,
    # :infant_healths,
    # :maternal_healths,
    # :cause_of_deaths,
    # :hospital_reminders,
    # :administrative_region,
    # :sub_division,
    # :division,
    :username,
    :name,
    :phone_number,
    :email,
    # :password,
    # :password_confirmation,
    # :password_reset,
    # :password_digest,
    # :password_reset_date,
    :verified,
    # :email_verified,
    :code,
  ].freeze

  # Overwrite this method to customize how hospitals are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(hospital)
  #   "Hospital ##{hospital.id}"
  # end
end
