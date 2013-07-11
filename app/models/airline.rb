class Airline < ActiveRecord::Base

  belongs_to :user
  has_and_belongs_to_many :aeroplanes
  has_many :safety_cards

  attr_accessible :code, :name
end
