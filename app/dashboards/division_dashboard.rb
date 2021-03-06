require "administrate/base_dashboard"

class DivisionDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    administrative_region: Field::BelongsTo,
    sub_divisions: Field::HasMany,
    deaths: Field::HasMany,
    councils: Field::HasMany,
    deceaseds: Field::HasMany,
    id: Field::Number,
    name: Field::Text,
    capital: Field::Text,
    code: Field::Text,
    area: Field::Number,
    population: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :administrative_region,
    :sub_divisions,
    :deaths,
    :councils,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :administrative_region,
    :sub_divisions,
    :deaths,
    :councils,
    :deceaseds,
    :id,
    :name,
    :capital,
    :code,
    :area,
    :population,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :administrative_region,
    :sub_divisions,
    :deaths,
    :councils,
    :deceaseds,
    :name,
    :capital,
    :code,
    :area,
    :population,
  ].freeze

  # Overwrite this method to customize how divisions are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(division)
  #   "Division ##{division.id}"
  # end
end
