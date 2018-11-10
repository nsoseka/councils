require "administrate/base_dashboard"

class AppointmentDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    hospital: Field::BelongsTo,
    new_born: Field::BelongsTo,
    council: Field::HasOne,
    id: Field::Number,
    date: Field::DateTime,
    purpose: Field::Text,
    kept: Field::Boolean,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    contact: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :hospital,
    :new_born,
    :council,
    :id,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :hospital,
    :new_born,
    :council,
    :id,
    :date,
    :purpose,
    :kept,
    :created_at,
    :updated_at,
    :contact,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :hospital,
    :new_born,
    :council,
    :date,
    :purpose,
    :kept,
    :contact,
  ].freeze

  # Overwrite this method to customize how appointments are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(appointment)
  #   "Appointment ##{appointment.id}"
  # end
end
