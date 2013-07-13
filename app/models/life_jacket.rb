class LifeJacket < ActiveRecord::Base

  belongs_to :life_jacket_age

  has_and_belongs_to_many :orders

  attr_accessible :name, :manufacturer, :life_jacket_age_id, :location, :open_mechanism, :closed_mechanism

  has_attached_file :location
  has_attached_file :open_mechanism
  has_attached_file :closed_mechanism

end
