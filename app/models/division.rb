class Division < ApplicationRecord
  belongs_to :administrative_region
  has_many :sub_divisions
  has_many :deaths, through: :sub_divisions
  has_many :councils, through: :sub_divisions
end

