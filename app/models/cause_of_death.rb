class CauseOfDeath < ApplicationRecord
  CHOICE_FACTOR  = '88888888'
  belongs_to :deceased
  belongs_to :hospital
  has_one :council, through: :hospital

  NON_VALIDATABLE_ATTRS = ["id", "created_at", "updated_at"] 
  VALIDATABLE_ATTRS = CauseOfDeath.attribute_names.reject{ |attr| NON_VALIDATABLE_ATTRS.include?(attr) }
  
  validates_presence_of VALIDATABLE_ATTRS

  validate :choices_made

  def choices_made
    if cause.present? && cause == CHOICE_FACTOR
      errors.add(:cause, :choose)
    end
  end
end
