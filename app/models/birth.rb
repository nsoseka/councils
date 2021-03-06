class Birth < ApplicationRecord
  extend FriendlyId
  friendly_id :given_name, use: :slugged
  
  CHOICE_FACTOR  = '88888888'
  belongs_to :council
  # belongs_to :division
  # belongs_to :administrative_region
  # belongs_to :agent

  NON_VALIDATABLE_ATTRS = ["id", "created_at", "updated_at"] #or any other attribute that does not need validation
  VALIDATABLE_ATTRS = Birth.attribute_names.reject{ |attr| NON_VALIDATABLE_ATTRS.include?(attr) }
  validates_presence_of VALIDATABLE_ATTRS
  validates_uniqueness_of :certificate_number
  validate :choices_made

  def choices_made
    if sex.present? && sex == CHOICE_FACTOR
      errors.add(:sex, :choose_sex)
    end

    if father_rf.present? && father_rf == CHOICE_FACTOR
      errors.add(:father_rf, :choose_rf)
    end

    if mother_rf.present? && mother_rf == CHOICE_FACTOR
      errors.add(:mother_rf, :choose_rf)
    end
  end
end
