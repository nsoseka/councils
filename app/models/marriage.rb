class Marriage < ApplicationRecord
  CHOICE_FACTOR  = '88888888'
  belongs_to :council
  # belongs_to :division
  # belongs_to :administrative_region
  # belongs_to :agent

  NON_VALIDATABLE_ATTRS = ["id", "created_at", "updated_at", 'divorced', 'drawn_by'] #or any other attribute that does not need validation
  VALIDATABLE_ATTRS = Marriage.attribute_names.reject{ |attr| NON_VALIDATABLE_ATTRS.include?(attr) }
  validates_presence_of VALIDATABLE_ATTRS

  validate :choices_made


  def send_notifications!
    # send a notification that the marriage has been posted up on their status
    agents = Agent.all
    agents.each do |agent|
      NotificationMailer.marriage_post_notification(agent, self).deliver_later
    end
  end

  def choices_made
    if husband_rf.present? && husband_rf == CHOICE_FACTOR
      errors.add(:husband_rf, :choose)
    end

    if wife_rf.present? && wife_rf == CHOICE_FACTOR
      errors.add(:wife_rf, :choose)
    end

    if marriage_ownership.present? && marriage_ownership == CHOICE_FACTOR
      errors.add(:marriage_ownership, :choose)
    end

    if marriage_type.present? && marriage_type == CHOICE_FACTOR
      errors.add(:marriage_type, :choose)
    end

    if objections_raised.present? && objections_raised == CHOICE_FACTOR
      errors.add(:objections_raised, :choose)
    end
  end

  # attribute_names
end

