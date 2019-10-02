class Pup < ActiveRecord::Base
  has_many :walks
  has_many :walkers, through: :walks

  validates :name, presence: true
  validates :name, length: { maximum: 5, minimum: 3 }
end
