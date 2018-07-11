class Walker < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  has_many :walks
  has_many :pups, through: :walks
end
