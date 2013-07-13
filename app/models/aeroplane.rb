class Aeroplane < ActiveRecord::Base

  has_many :safety_cards
  has_many :orders

  has_many :seat_layouts, through: :orders
  has_many :airlines, through: :orders

  attr_accessible :manufacturer, :name
end
