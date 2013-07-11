class Seat < ActiveRecord::Base

  has_and_belongs_to_many :aeroplanes
  has_one :seat_manufacturer
  has_one :seat_class
  has_one :seat_belt

  attr_accessible :name
end
