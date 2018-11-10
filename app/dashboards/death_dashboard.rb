require "administrate/base_dashboard"

class DeathDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    council: Field::BelongsTo,
    division: Field::HasOne,
    sub_division: Field::HasOne,
    administrative_region: Field::HasOne,
    id: Field::Number,
    surname: Field::Text,
    given_name: Field::Text,
    date_born: Field::DateTime,
    place_born: Field::Text,
    mr: Field::Text,
    date_died: Field::DateTime,
    place_died: Field::Text,
    sex: Field::Text,
    marital_status: Field::Text,
    occupation: Field::Text,
    residence: Field::Text,
    father: Field::Text,
    mother: Field::Text,
    date_drawn: Field::DateTime,
    declaration: Field::Text,
    d_name: Field::Text,
    d_occupation: Field::Text,
    d_capacity: Field::Text,
    fw_name: Field::Text,
    fw_occupation: Field::Text,
    sw_name: Field::Text,
    sw_occupation: Field::Text,
    sw_residence: Field::Text,
    attestator: Field::Text,
    registrar: Field::Text,
    secretary: Field::Text,
    date_made: Field::DateTime,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    certificate_number: Field::String,
    fw_residence: Field::Text,
    slug: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :council,
    :division,
    :sub_division,
    :administrative_region,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :council,
    :division,
    :sub_division,
    :administrative_region,
    :id,
    :surname,
    :given_name,
    :date_born,
    :place_born,
    :mr,
    :date_died,
    :place_died,
    :sex,
    :marital_status,
    :occupation,
    :residence,
    :father,
    :mother,
    :date_drawn,
    :declaration,
    :d_name,
    :d_occupation,
    :d_capacity,
    :fw_name,
    :fw_occupation,
    :sw_name,
    :sw_occupation,
    :sw_residence,
    :attestator,
    :registrar,
    :secretary,
    :date_made,
    :created_at,
    :updated_at,
    :certificate_number,
    :fw_residence,
    :slug,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :council,
    :division,
    :sub_division,
    :administrative_region,
    :surname,
    :given_name,
    :date_born,
    :place_born,
    :mr,
    :date_died,
    :place_died,
    :sex,
    :marital_status,
    :occupation,
    :residence,
    :father,
    :mother,
    :date_drawn,
    :declaration,
    :d_name,
    :d_occupation,
    :d_capacity,
    :fw_name,
    :fw_occupation,
    :sw_name,
    :sw_occupation,
    :sw_residence,
    :attestator,
    :registrar,
    :secretary,
    :date_made,
    :certificate_number,
    :fw_residence,
    :slug,
  ].freeze

  # Overwrite this method to customize how deaths are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(death)
  #   "Death ##{death.id}"
  # end
end
