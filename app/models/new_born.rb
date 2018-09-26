class NewBorn < ApplicationRecord
  CHOICE_FACTOR  = '88888888'
  belongs_to :hospital
  belongs_to :council
  # has_one :council, through: :hospital
  # belongs_to :division
  # belongs_to :administrative_region
  # belongs_to :agent

  NON_VALIDATABLE_ATTRS = ["id", "created_at", "updated_at"] 
  VALIDATABLE_ATTRS = NewBorn.attribute_names.reject{ |attr| NON_VALIDATABLE_ATTRS.include?(attr) }
  validates_presence_of VALIDATABLE_ATTRS
  validates :f_tel, numericality: { only_integer: true }, length: { is: 9 }
  validates :m_tel, numericality: { only_integer: true }, length: { is: 9 }

  validate :choices_made

  def choices_made
    if sex.present? && sex == CHOICE_FACTOR
      errors.add(:sex, :choose_sex)
    end

    if attended_clinic.present? && attended_clinic == CHOICE_FACTOR
      errors.add(:attended_clinic, :clinic_status)
    end
  end


  def generate_child_code
    code = SecureRandom.uuid.split('-')[0]
    begin
      self[:child_code] = code
    end while NewBorn.exists?(child_code: self[:child_code])
  end
end


