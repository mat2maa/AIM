class LifeJacket < ActiveRecord::Base

  has_and_belongs_to_many :aeroplanes

  attr_accessible :name
end
