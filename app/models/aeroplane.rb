class Aeroplane < ActiveRecord::Base

  has_and_belongs_to_many :airlines
  has_many :safety_cards
  has_and_belongs_to_many :seats
  has_and_belongs_to_many :seat_layouts
  has_and_belongs_to_many :life_jackets

  attr_accessible :manufacturer, :name
end
