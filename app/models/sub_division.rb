class SubDivision < ApplicationRecord
  belongs_to :division
  has_one :administrative_region, through: :division
  has_one :council
  has_many :deaths, through: :council

  delegate :name, to: :administrative_region, prefix: true, allow_nil: true
end

