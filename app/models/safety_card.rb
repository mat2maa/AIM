class SafetyCard < ActiveRecord::Base

  belongs_to :order

  attr_accessible :name, :order_id, :front, :back

  has_attached_file :front
  has_attached_file :back
end
