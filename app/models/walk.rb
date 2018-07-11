class Walk < ActiveRecord::Base
  validates :day, presence: true

  belongs_to :pup
  belongs_to :walker
end
