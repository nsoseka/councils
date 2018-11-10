require "administrate/base_dashboard"

class DeceasedDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    hospital: Field::BelongsTo,
    council: Field::BelongsTo,
    cause_of_death: Field::HasOne,
    id: Field::Number,
    d_name: Field::Text,
    d_db: Field::DateTime,
    d_pb: Field::Text,
    d_dd: Field::DateTime,
    d_pd: Field::Text,
    d_job: Field::Text,
    marital_status: Field::Text,
    sex: Field::Text,
    f_name: Field::Text,
    f_res: Field::Text,
    m_name: Field::Text,
    m_res: Field::Text,
    num_children: Field::Number,
    contact: Field::Text,
    contact_tel: Field::Text,
    contact_lang: Field::Text,
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
    :hospital,
    :council,
    :cause_of_death,
    :id,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :hospital,
    :council,
    :cause_of_death,
    :id,
    :d_name,
    :d_db,
    :d_pb,
    :d_dd,
    :d_pd,
    :d_job,
    :marital_status,
    :sex,
    :f_name,
    :f_res,
    :m_name,
    :m_res,
    :num_children,
    :contact,
    :contact_tel,
    :contact_lang,
    :created_at,
    :updated_at,
    :slug,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :hospital,
    :council,
    :cause_of_death,
    :d_name,
    :d_db,
    :d_pb,
    :d_dd,
    :d_pd,
    :d_job,
    :marital_status,
    :sex,
    :f_name,
    :f_res,
    :m_name,
    :m_res,
    :num_children,
    :contact,
    :contact_tel,
    :contact_lang,
    :slug,
  ].freeze

  # Overwrite this method to customize how deceaseds are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(deceased)
  #   "Deceased ##{deceased.id}"
  # end
end
