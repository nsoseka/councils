require "administrate/base_dashboard"

class NewBornDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    hospital: Field::BelongsTo,
    council: Field::BelongsTo,
    vaccination_calendar: Field::HasOne,
    appointments: Field::HasMany,
    infant_health: Field::HasOne,
    maternal_health: Field::HasOne,
    id: Field::Number,
    child_code: Field::Text,
    c_name: Field::Text,
    c_db: Field::DateTime,
    c_pb: Field::Text,
    sex: Field::Text,
    f_name: Field::Text,
    f_res: Field::Text,
    f_db: Field::DateTime,
    f_pb: Field::Text,
    f_tel: Field::Text,
    m_name: Field::Text,
    m_res: Field::Text,
    m_db: Field::DateTime,
    m_pb: Field::Text,
    m_tel: Field::Text,
    attended_clinic: Field::Text,
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
    :vaccination_calendar,
    :appointments,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :hospital,
    :council,
    :vaccination_calendar,
    :appointments,
    :infant_health,
    :maternal_health,
    :id,
    :child_code,
    :c_name,
    :c_db,
    :c_pb,
    :sex,
    :f_name,
    :f_res,
    :f_db,
    :f_pb,
    :f_tel,
    :m_name,
    :m_res,
    :m_db,
    :m_pb,
    :m_tel,
    :attended_clinic,
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
    :vaccination_calendar,
    :appointments,
    :infant_health,
    :maternal_health,
    :child_code,
    :c_name,
    :c_db,
    :c_pb,
    :sex,
    :f_name,
    :f_res,
    :f_db,
    :f_pb,
    :f_tel,
    :m_name,
    :m_res,
    :m_db,
    :m_pb,
    :m_tel,
    :attended_clinic,
    :slug,
  ].freeze

  # Overwrite this method to customize how new borns are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(new_born)
  #   "NewBorn ##{new_born.id}"
  # end
end
