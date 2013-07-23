class SeatBeltAsset < ActiveRecord::Base

  belongs_to :seat

  attr_accessible :asset, :seat_id

  has_attached_file :asset,
                    default_url: '/images/normal/missing_seat_belt_asset.png'
end
