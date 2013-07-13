class UserProfile < ActiveRecord::Base

  belongs_to :user
  has_one :airline, dependent: :destroy

  attr_accessible :address, :contact_name, :fax, :mobile, :phone, :user_id, :airline_attributes

  accepts_nested_attributes_for :airline
end
