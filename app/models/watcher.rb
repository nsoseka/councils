class Watcher < ApplicationRecord
  NON_VALIDATABLE_ATTRS = ["id", "created_at", "updated_at", "sector", "role"] #or any other attribute that does not need validation
  VALIDATABLE_ATTRS = Watcher.attribute_names.reject{ |attr| NON_VALIDATABLE_ATTRS.include?(attr) }
  validates_presence_of VALIDATABLE_ATTRS

  validates_uniqueness_of :phone_number, :email, :name

  validate :unique_name

  def unique_name
    if name.present? && Hospital.find_by(username: name) || Agent.find_by(username: name)
      errors.add(:name, "has been taken, choose another")
    end
  end

  has_secure_password
end


