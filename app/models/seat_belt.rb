class SeatBelt < ActiveRecord::Base

  belongs_to :seat, :dependent => :destroy

  attr_accessible :name, :belt_image

  has_attached_file :belt_image
end
