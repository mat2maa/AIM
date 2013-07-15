class SeatBelt < ActiveRecord::Base

  belongs_to :seat

  attr_accessible :name, :belt_image, :seat_id

  has_attached_file :belt_image
end
