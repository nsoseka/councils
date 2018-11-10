require "administrate/base_dashboard"

class CouncilDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    sub_division: Field::BelongsTo,
    administrative_region: Field::HasOne,
    division: Field::HasOne,
    agents: Field::HasMany,
    deaths: Field::HasMany,
    marriages: Field::HasMany,
    births: Field::HasMany,
    hospitals: Field::HasMany,
    infant_healths: Field::HasMany,
    maternal_healths: Field::HasMany,
    appointments: Field::HasMany,
    cause_of_deaths: Field::HasMany,
    deceaseds: Field::HasMany,
    new_borns: Field::HasMany,
    id: Field::Number,
    name: Field::Text,
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
    # :sub_division,
    # :administrative_region,
    # :division,
    :code,
    :name,
    :agents,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :sub_division,
    :administrative_region,
    :division,
    :agents,
    :deaths,
    :marriages,
    :births,
    :hospitals,
    :infant_healths,
    :maternal_healths,
    :appointments,
    :cause_of_deaths,
    :deceaseds,
    :new_borns,
    :id,
    :name,
    :code,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :sub_division,
    :administrative_region,
    :division,
    :agents,
    :deaths,
    :marriages,
    :births,
    :hospitals,
    :infant_healths,
    :maternal_healths,
    :appointments,
    :cause_of_deaths,
    :deceaseds,
    :new_borns,
    :name,
    :code,
  ].freeze

  # Overwrite this method to customize how councils are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(council)
  #   "Council ##{council.id}"
  # end
end
