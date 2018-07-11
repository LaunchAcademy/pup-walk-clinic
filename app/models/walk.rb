class Walk < ActiveRecord::Base
  belongs_to :walker
  belongs_to :floof

  validates :day, presence: true
end
