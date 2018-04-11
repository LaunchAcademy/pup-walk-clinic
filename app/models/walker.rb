class Walker < ActiveRecord::Base
  has_many :walks
  has_many :floofs, through: :walks

  validates :name, null: false
end
