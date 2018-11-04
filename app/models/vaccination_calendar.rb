class VaccinationCalendar < ApplicationRecord 
  belongs_to :hospital 
  belongs_to :new_born
end
