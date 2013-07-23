class ClosedExitDoor < ActiveRecord::Base

  belongs_to :order

  attr_accessible :asset, :order_id

  has_attached_file :asset,
                    default_url: '/images/normal/missing_closed_exit_door_asset.png'
end
