class Aeroplane < ActiveRecord::Base

  has_many :safety_cards
  has_many :orders

  has_many :seat_layouts, through: :orders
  has_many :airlines, through: :orders
  has_many :scripts, dependent: :destroy

  attr_accessible :manufacturer, :name, :scripts_attributes

  accepts_nested_attributes_for :scripts,
                                allow_destroy: true
end
