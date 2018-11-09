class InfantHealth < ApplicationRecord 
  CHOICE_FACTOR  = '88888888'
  belongs_to :new_born
  belongs_to :hospital
  has_one :council, through: :hospital

  NON_VALIDATABLE_ATTRS = ["id", "created_at", "updated_at"] 
  VALIDATABLE_ATTRS = InfantHealth.attribute_names.reject{ |attr| NON_VALIDATABLE_ATTRS.include?(attr) }
  
  validates_presence_of VALIDATABLE_ATTRS

  validates :agpar_scor_1, :agpar_scor_5, :length, :weight, numericality: true

  validate :choices_made

  scope :hospital_entries, ->(id) { where.not(hospital_id: id) }

  def choices_made
    [:term, :fsb, :msb, :resuscitation, :abnormalities, :art].each do |factor|
      if self[factor].present? && self[factor] == CHOICE_FACTOR
        errors.add(factor, :choose)
      end
    end

    if fsb.present? && fsb == "yes"
      if still_birth_cause == "not_still_birth"
        errors.add(:still_birth_cause, :indicate_cuase_of_stillbirth)
      end
    end
  end
end
