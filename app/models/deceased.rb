class Deceased < ApplicationRecord
  extend FriendlyId
  friendly_id :d_name, use: :slugged

  CHOICE_FACTOR  = '88888888'
  belongs_to :hospital
  belongs_to :council 
  has_one :cause_of_death
  # belongs_to :division
  # belongs_to :administrative_region
  # belongs_to :agent

  NON_VALIDATABLE_ATTRS = ["id", "created_at", "updated_at"] 
  VALIDATABLE_ATTRS = Deceased.attribute_names.reject{ |attr| NON_VALIDATABLE_ATTRS.include?(attr) }
  validates_presence_of VALIDATABLE_ATTRS
  validates :contact_tel, numericality: { only_integer: true }, length: { is: 9 }

  validate :choices_made

  def choices_made
    if sex.present? && sex == CHOICE_FACTOR
      errors.add(:sex, :choose)
    end

    if marital_status.present? && marital_status == CHOICE_FACTOR
      errors.add(:marital_status, :choose)
    end

    if contact_lang.present? && contact_lang == CHOICE_FACTOR
      errors.add(:contact_lang, :choose)
    end
  end
end
