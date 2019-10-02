class Walk < ActiveRecord::Base
  belongs_to :pup
  belongs_to :walker
end
