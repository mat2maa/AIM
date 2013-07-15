class SeatAsset < ActiveRecord::Base

  belongs_to :seat

  attr_accessible :asset, :seat_id

  has_attached_file :asset
end
