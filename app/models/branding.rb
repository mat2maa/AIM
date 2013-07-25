class Branding < ActiveRecord::Base

  belongs_to :order

  attr_accessible :asset, :order_id

  has_attached_file :asset,
                    default_url: '/assets/normal/missing_branding_asset.png'
end
