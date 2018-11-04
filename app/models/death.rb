class Death < ApplicationRecord
  CHOICE_FACTOR  = '88888888'
  
  belongs_to :council
  has_one :division, through: :council
  has_one :sub_division, through: :council 
  has_one :administrative_region, through: :council
  # belongs_to :administrative_region
  # belongs_to :agent

  NON_VALIDATABLE_ATTRS = ["id", "created_at", "updated_at", "attestator"] #or any other attribute that does not need validation
  VALIDATABLE_ATTRS = Death.attribute_names.reject{ |attr| NON_VALIDATABLE_ATTRS.include?(attr) }
  validates_presence_of VALIDATABLE_ATTRS
  validates_uniqueness_of :certificate_number
  validate :choices_made

  def choices_made
    puts sex, marital_status, d_capacity, CHOICE_FACTOR, d_capacity == CHOICE_FACTOR
    if sex.present? && sex == CHOICE_FACTOR
      errors.add(:sex, :choose_sex)
    end

    if marital_status.present? && marital_status == CHOICE_FACTOR
      errors.add(:marital_status, :choose_marital_status)
    end

    if d_capacity.present? && d_capacity == CHOICE_FACTOR
      errors.add(:d_capacity, :choose_capacity)
    end
  end

  # validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
  # attribute_names
end

