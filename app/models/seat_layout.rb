class SeatLayout < ActiveRecord::Base

  has_many :orders

  has_many :aeroplanes, through: :orders

  attr_accessible :name, :layout_image

  has_attached_file :layout_image
end
