class SeatBelt < ActiveRecord::Base

  belongs_to :seat

  attr_accessible :name
end
