class Airline < ActiveRecord::Base

  belongs_to :user_profile, :dependent => :destroy

  has_many :safety_cards
  has_many :orders

  has_many :aeroplanes, through: :orders

  attr_accessible :code, :name, :logo

  has_attached_file :logo

end
