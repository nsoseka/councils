class Birth < ApplicationRecord
  CHOICE_FACTOR  = '88888888'
  belongs_to :council
  # belongs_to :division
  # belongs_to :administrative_region
  # belongs_to :agent

  NON_VALIDATABLE_ATTRS = ["id", "created_at", "updated_at"] #or any other attribute that does not need validation
  VALIDATABLE_ATTRS = Birth.attribute_names.reject{ |attr| NON_VALIDATABLE_ATTRS.include?(attr) }
  validates_presence_of VALIDATABLE_ATTRS

  validate :choices_made

  def choices_made
    if sex.present? && sex == CHOICE_FACTOR
      errors.add(:sex, 'please choose the sex of the child')
    end

    if father_rf.present? && father_rf == CHOICE_FACTOR
      errors.add(:father_rf, 'please choose a reference document')
    end

    if mother_rf.present? && mother_rf == CHOICE_FACTOR
      errors.add(:mother_rf, 'please choose a reference document')
    end
  end
end
