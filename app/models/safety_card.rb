class SafetyCard < ActiveRecord::Base

  belongs_to :airline
  belongs_to :aeroplane

  has_many :orders

  attr_accessible :name, :airline_id, :aeroplane_id, :card_image

  has_attached_file :card_image
end
