class LifeJacketAge < ActiveRecord::Base

  has_many :life_jackets

  attr_accessible :age
end
