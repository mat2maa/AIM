class UserProfile < ActiveRecord::Base

  belongs_to :user

  attr_accessible :address, :contact_name, :fax, :mobile, :phone, :user_id
end
