class Agent < ApplicationRecord
  belongs_to :council
  delegate :name, to: :council, prefix: true, allow_nil: true
  has_one :administrative_region, through: :council
  has_one :sub_division, through: :council
  has_one :division, through: :council

  # delegate :name, to: :administrative_region, prefix: true, allow_nil: true
  # delegate :name, to: :division, prefix: true, allow_nil: true
  # delegate :name, to: :sub_division, prefix: true, allow_nil: true
  # has_many :deaths

  NON_VALIDATABLE_ATTRS = ["id", "created_at", "updated_at", "verified?", "email_verified?"] #or any other attribute that does not need validation
  VALIDATABLE_ATTRS = Agent.attribute_names.reject{ |attr| NON_VALIDATABLE_ATTRS.include?(attr) }
  validates_presence_of VALIDATABLE_ATTRS

  validates_uniqueness_of :phone_number, :email, :username
  validates :phone_number, numericality: { only_integer: true }, length: { is: 9 }
  validates :password, length: { minimum: 8 }

  validate :council_choice, :full_names_given?
  # validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 

  has_secure_password

  def council_choice
    if council_id.present? && council_id == 88888888
      errors.add(:council_id, 'must be chosen')
    end
  end

  def full_names_given?
    if full_names.present? && full_names.split.length < 2
      errors.add(:full_names, 'please provided your full names separated by a space')
    end
  end
end
