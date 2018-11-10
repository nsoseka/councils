require "administrate/base_dashboard"

class AgentDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    council: Field::BelongsTo,
    administrative_region: Field::HasOne,
    sub_division: Field::HasOne,
    division: Field::HasOne,
    id: Field::Number,
    username: Field::Text,
    full_names: Field::Text,
    phone_number: Field::Text,
    email: Field::Text,
    password_digest: Field::Text,
    password_confirmation: Field::Text,
    verified: Field::Boolean,
    email_verified: Field::Boolean,
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
    :council,
    :full_names,
    :username,
    :phone_number
    # :administrative_region,
    # :sub_division,
    # :division,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :council,
    # :administrative_region,
    # :sub_division,
    # :division,
    :id,
    :username,
    :full_names,
    :phone_number,
    :email,
    # :password_digest,
    # :password_confirmation,
    :verified,
    :email_verified,
    :code,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    # :council,
    # :administrative_region,
    # :sub_division,
    # :division,
    :username,
    :full_names,
    :phone_number,
    :email,
    # :password_digest,
    # :password_confirmation,
    :verified,
    :email_verified,
    :code,
  ].freeze

  # Overwrite this method to customize how agents are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(agent)
  #   "Agent ##{agent.id}"
  # end
end
