class MaternalHealth < ApplicationRecord
  CHOICE_FACTOR  = '88888888'
  belongs_to :new_born
  belongs_to :hospital
  has_one :council, through: :hospital

  NON_VALIDATABLE_ATTRS = ["id", "created_at", "updated_at"] 
  VALIDATABLE_ATTRS = MaternalHealth.attribute_names.reject{ |attr| NON_VALIDATABLE_ATTRS.include?(attr) }
  
  validates_presence_of VALIDATABLE_ATTRS

  validates :gestational_age, :sutures, :blood_loss, :duration_of_labour, numericality: true

  validate :choices_made

  def choices_made
    [:labour_on_set, :type_of_delivery, :placenta_separation, :placenta, :membranes, :nature_of_cord, :source_of_pph, :episiotomy, :laceration, :uterus, :post_partum_complications, :mothers_condition, :birth_attendant, :place_of_delivery, :vessels].each do |factor|
      if self[factor].present? && self[factor].to_s == CHOICE_FACTOR
        errors.add(factor, :choose)
      end
    end
  end
end


