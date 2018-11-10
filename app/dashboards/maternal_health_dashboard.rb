require "administrate/base_dashboard"

class MaternalHealthDashboard < Administrate::BaseDashboard
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
    birth_attendant: Field::String,
    place_of_delivery: Field::String,
    gestational_age: Field::Number,
    duration_of_labour: Field::String.with_options(searchable: false),
    labour_on_set: Field::String,
    type_of_delivery: Field::String,
    placenta_separation: Field::String,
    placenta: Field::String,
    membranes: Field::String,
    nature_of_cord: Field::String,
    vessels: Field::Number,
    blood_loss: Field::String.with_options(searchable: false),
    source_of_pph: Field::String,
    episiotomy: Field::String,
    laceration: Field::String,
    sutures: Field::Number,
    uterus: Field::String,
    mothers_condition: Field::String,
    post_partum_complications: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    age: Field::Number,
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
    :birth_attendant,
    :place_of_delivery,
    :gestational_age,
    :duration_of_labour,
    :labour_on_set,
    :type_of_delivery,
    :placenta_separation,
    :placenta,
    :membranes,
    :nature_of_cord,
    :vessels,
    :blood_loss,
    :source_of_pph,
    :episiotomy,
    :laceration,
    :sutures,
    :uterus,
    :mothers_condition,
    :post_partum_complications,
    :created_at,
    :updated_at,
    :age,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :new_born,
    :hospital,
    :council,
    :birth_attendant,
    :place_of_delivery,
    :gestational_age,
    :duration_of_labour,
    :labour_on_set,
    :type_of_delivery,
    :placenta_separation,
    :placenta,
    :membranes,
    :nature_of_cord,
    :vessels,
    :blood_loss,
    :source_of_pph,
    :episiotomy,
    :laceration,
    :sutures,
    :uterus,
    :mothers_condition,
    :post_partum_complications,
    :age,
  ].freeze

  # Overwrite this method to customize how maternal healths are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(maternal_health)
  #   "MaternalHealth ##{maternal_health.id}"
  # end
end
