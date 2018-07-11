class Pup < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  has_many :walks
  has_many :walkers, through: :walks
end
