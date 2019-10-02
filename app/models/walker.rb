class Walker < ActiveRecord::Base
  has_many :walks
  has_many :pups, through: :walks

  validates :name, presence: true
  validates :name, uniqueness: true
end
