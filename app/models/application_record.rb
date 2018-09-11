class ApplicationRecord < ActiveRecord::Base
  delegate :name, to: :administrative_region, prefix: true, allow_nil: true
  delegate :name, to: :division, prefix: true, allow_nil: true
  delegate :name, to: :sub_division, prefix: true, allow_nil: true
  
  self.abstract_class = true

  def self.today
    where(created_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day)
  end
end
