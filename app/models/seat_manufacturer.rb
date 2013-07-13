class SeatManufacturer < ActiveRecord::Base

  has_many :seats

  attr_accessible :name
end
