class Hospital < ApplicationRecord
  belongs_to :council
  has_many :new_borns
  has_many :deceaseds
  delegate :name, to: :council, prefix: true, allow_nil: true
  has_one :administrative_region, through: :council
  has_one :sub_division, through: :council
  has_one :division, through: :council

  # has_many :deaths

  NON_VALIDATABLE_ATTRS = ["id", "created_at", "updated_at", "verified?", "email_verified?", "password_reset", "password_reset_date", "code"] #or any other attribute that does not need validation
  VALIDATABLE_ATTRS = Hospital.attribute_names.reject{ |attr| NON_VALIDATABLE_ATTRS.include?(attr) }
  validates_presence_of VALIDATABLE_ATTRS

  validates_uniqueness_of :phone_number, :email, :username
  validates :phone_number, numericality: { only_integer: true }, length: { is: 9 }
  validates :password, length: { minimum: 8 }

  validate :council_choice, :name_given?, :strict_unique_username
  # validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 

  has_secure_password

  def strict_unique_username
    if username.present? && Agent.find_by(username: username)
      errors.add(:username, 'Please that username has been taken')
    end
  end

  def council_choice
    if council_id.present? && council_id == 88888888
      errors.add(:council_id, 'must be chosen')
    end
  end

  def name_given?
    if name.present? && name.split.length < 2
      errors.add(:name, 'please provided full names separated by a space')
    end
  end
end
