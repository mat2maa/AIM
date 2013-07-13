class Seat < ActiveRecord::Base

  belongs_to :seat_manufacturer
  belongs_to :seat_class
  belongs_to :order

  has_one :seat_belt, :dependent => :destroy

  attr_accessible :name, :seat_class_id, :seat_manufacturer_id, :seat_belt_attributes, :texture

  accepts_nested_attributes_for :seat_belt

  has_attached_file :texture
end
