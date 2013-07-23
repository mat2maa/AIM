class CarpetTexture < ActiveRecord::Base

  belongs_to :order

  attr_accessible :asset, :order_id

  has_attached_file :asset,
                    default_url: '/images/normal/missing_carpet_texture_asset.png'
end
