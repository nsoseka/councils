class Council < ApplicationRecord
  belongs_to :sub_division
  has_one :administrative_region, through: :sub_division
  has_one :division, through: :sub_division
  has_many :agents
  has_many :deaths
  has_many :marriages
  has_many :births
  has_many :hospitals
  # has_many :new_borns, through: :hospitals
  has_many :deceaseds
  has_many :new_borns

  delegate :name, to: :administrative_region, prefix: true, allow_nil: true

  # has_many :deaths

  NON_VALIDATABLE_ATTRS = ["id", "created_at", "updated_at"] #or any other attribute that does not need validation
  VALIDATABLE_ATTRS = Council.attribute_names.reject{ |attr| NON_VALIDATABLE_ATTRS.include?(attr) }
  validates_presence_of VALIDATABLE_ATTRS
end


