class Seat < ActiveRecord::Base

  belongs_to :seat_manufacturer
  belongs_to :seat_class
  belongs_to :order

  has_one :seat_belt,
          dependent: :destroy

  has_many :seat_assets,
           dependent: :destroy

  attr_accessible :name, :order_id, :seat_class_id, :seat_manufacturer_id, :seat_belt_attributes, :seat_assets_attributes

  accepts_nested_attributes_for :seat_belt, :seat_assets

end
