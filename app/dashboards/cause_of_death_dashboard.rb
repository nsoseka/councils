require "administrate/base_dashboard"

class CauseOfDeathDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    deceased: Field::BelongsTo,
    hospital: Field::BelongsTo,
    council: Field::BelongsTo,
    id: Field::Number,
    age: Field::Number,
    cause: Field::String,
    sex: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :deceased,
    :hospital,
    :council,
    :id,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :deceased,
    :hospital,
    :council,
    :id,
    :age,
    :cause,
    :sex,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :deceased,
    :hospital,
    :council,
    :age,
    :cause,
    :sex,
  ].freeze

  # Overwrite this method to customize how cause of deaths are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(cause_of_death)
  #   "CauseOfDeath ##{cause_of_death.id}"
  # end
end
