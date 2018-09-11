class AdministrativeRegion < ApplicationRecord
  has_many :divisions
  has_many :sub_divisions, through: :divisions
  has_many :deaths, through: :divisions
  has_many :councils, through: :divisions
end

