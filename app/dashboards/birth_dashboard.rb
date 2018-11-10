require "administrate/base_dashboard"

class BirthDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    council: Field::BelongsTo,
    id: Field::Number,
    sub_center: Field::Text,
    certificate_number: Field::Text,
    surname: Field::Text,
    given_name: Field::Text,
    date_born: Field::DateTime,
    place_born: Field::Text,
    sex: Field::Text,
    father: Field::Text,
    father_pb: Field::Text,
    father_db: Field::DateTime,
    father_res: Field::Text,
    father_job: Field::Text,
    father_n: Field::Text,
    father_rf: Field::Text,
    mother: Field::Text,
    mother_pb: Field::Text,
    mother_db: Field::DateTime,
    mother_res: Field::Text,
    mother_job: Field::Text,
    mother_n: Field::Text,
    mother_rf: Field::Text,
    date_drawn: Field::DateTime,
    declaration: Field::Text,
    registrar: Field::Text,
    secretary: Field::Text,
    date_done: Field::DateTime,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    slug: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :council,
    :id,
    :sub_center,
    :certificate_number,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :council,
    :id,
    :sub_center,
    :certificate_number,
    :surname,
    :given_name,
    :date_born,
    :place_born,
    :sex,
    :father,
    :father_pb,
    :father_db,
    :father_res,
    :father_job,
    :father_n,
    :father_rf,
    :mother,
    :mother_pb,
    :mother_db,
    :mother_res,
    :mother_job,
    :mother_n,
    :mother_rf,
    :date_drawn,
    :declaration,
    :registrar,
    :secretary,
    :date_done,
    :created_at,
    :updated_at,
    :slug,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :council,
    :sub_center,
    :certificate_number,
    :surname,
    :given_name,
    :date_born,
    :place_born,
    :sex,
    :father,
    :father_pb,
    :father_db,
    :father_res,
    :father_job,
    :father_n,
    :father_rf,
    :mother,
    :mother_pb,
    :mother_db,
    :mother_res,
    :mother_job,
    :mother_n,
    :mother_rf,
    :date_drawn,
    :declaration,
    :registrar,
    :secretary,
    :date_done,
    :slug,
  ].freeze

  # Overwrite this method to customize how births are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(birth)
  #   "Birth ##{birth.id}"
  # end
end
