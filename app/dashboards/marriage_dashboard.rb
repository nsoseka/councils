require "administrate/base_dashboard"

class MarriageDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    council: Field::BelongsTo,
    id: Field::Number,
    certificate_number: Field::Text,
    husband: Field::Text,
    wife: Field::Text,
    appearance_date: Field::DateTime,
    husband_db: Field::DateTime,
    husband_pb: Field::Text,
    husband_job: Field::Text,
    husband_n: Field::Text,
    husband_rf: Field::Text,
    husband_res: Field::Text,
    husband_f: Field::Text,
    husband_m: Field::Text,
    wife_db: Field::DateTime,
    wife_pb: Field::Text,
    wife_job: Field::Text,
    wife_res: Field::Text,
    wife_f: Field::Text,
    wife_m: Field::Text,
    marriage_ownership: Field::Text,
    marriage_type: Field::Text,
    objections_raised: Field::Text,
    husband_fh: Field::Text,
    wife_fh: Field::Text,
    husband_w: Field::Text,
    wife_w: Field::Text,
    drawn_by: Field::Text,
    registrar: Field::Text,
    secretary: Field::Text,
    drawn_at: Field::Text,
    drawn_on: Field::DateTime,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    wife_n: Field::Text,
    wife_rf: Field::Text,
    divorced: Field::Boolean,
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
    :certificate_number,
    :husband,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :council,
    :id,
    :certificate_number,
    :husband,
    :wife,
    :appearance_date,
    :husband_db,
    :husband_pb,
    :husband_job,
    :husband_n,
    :husband_rf,
    :husband_res,
    :husband_f,
    :husband_m,
    :wife_db,
    :wife_pb,
    :wife_job,
    :wife_res,
    :wife_f,
    :wife_m,
    :marriage_ownership,
    :marriage_type,
    :objections_raised,
    :husband_fh,
    :wife_fh,
    :husband_w,
    :wife_w,
    :drawn_by,
    :registrar,
    :secretary,
    :drawn_at,
    :drawn_on,
    :created_at,
    :updated_at,
    :wife_n,
    :wife_rf,
    :divorced,
    :slug,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :council,
    :certificate_number,
    :husband,
    :wife,
    :appearance_date,
    :husband_db,
    :husband_pb,
    :husband_job,
    :husband_n,
    :husband_rf,
    :husband_res,
    :husband_f,
    :husband_m,
    :wife_db,
    :wife_pb,
    :wife_job,
    :wife_res,
    :wife_f,
    :wife_m,
    :marriage_ownership,
    :marriage_type,
    :objections_raised,
    :husband_fh,
    :wife_fh,
    :husband_w,
    :wife_w,
    :drawn_by,
    :registrar,
    :secretary,
    :drawn_at,
    :drawn_on,
    :wife_n,
    :wife_rf,
    :divorced,
    :slug,
  ].freeze

  # Overwrite this method to customize how marriages are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(marriage)
  #   "Marriage ##{marriage.id}"
  # end
end
