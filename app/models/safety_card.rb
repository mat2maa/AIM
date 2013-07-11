class SafetyCard < ActiveRecord::Base

  belongs_to :airline
  belongs_to :aeroplane

  attr_accessible :name
end
