class Airline < ActiveRecord::Base

  belongs_to :user_profile, :dependent => :destroy
  has_and_belongs_to_many :aeroplanes
  has_many :safety_cards

  attr_accessible :code, :name, :logo, :livery, :branding

  has_attached_file :logo
  has_attached_file :livery
  has_attached_file :branding

end
