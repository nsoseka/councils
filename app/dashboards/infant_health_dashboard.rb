require "administrate/base_dashboard"

class InfantHealthDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    new_born: Field::BelongsTo,
    hospital: Field::BelongsTo,
    council: Field::HasOne,
    id: Field::Number,
    term: Field::String,
    fsb: Field::String,
    msb: Field::String,
    still_birth_cause: Field::String,
    agpar_scor_1: Field::String.with_options(searchable: false),
    agpar_scor_5: Field::String.with_options(searchable: false),
    weight: Field::String.with_options(searchable: false),
    length: Field::String.with_options(searchable: false),
    head_circumference: Field::String.with_options(searchable: false),
    resuscitation: Field::String,
    abnormalities: Field::String,
    art: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :new_born,
    :hospital,
    :council,
    :id,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :new_born,
    :hospital,
    :council,
    :id,
    :term,
    :fsb,
    :msb,
    :still_birth_cause,
    :agpar_scor_1,
    :agpar_scor_5,
    :weight,
    :length,
    :head_circumference,
    :resuscitation,
    :abnormalities,
    :art,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :new_born,
    :hospital,
    :council,
    :term,
    :fsb,
    :msb,
    :still_birth_cause,
    :agpar_scor_1,
    :agpar_scor_5,
    :weight,
    :length,
    :head_circumference,
    :resuscitation,
    :abnormalities,
    :art,
  ].freeze

  # Overwrite this method to customize how infant healths are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(infant_health)
  #   "InfantHealth ##{infant_health.id}"
  # end
end
