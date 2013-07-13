class Airline < ActiveRecord::Base

  belongs_to :user_profile, :dependent => :destroy

  has_many :safety_cards
  has_many :orders

  has_many :aeroplanes, through: :orders

  attr_accessible :code, :name, :logo, :livery, :branding

  has_attached_file :logo
  has_attached_file :livery
  has_attached_file :branding

end
