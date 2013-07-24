class Script < ActiveRecord::Base

  belongs_to :aeroplane

  has_many :scenes,
           dependent: :destroy

  attr_accessible :aeroplane_id, :scenes_attributes

  accepts_nested_attributes_for :scenes,
                                allow_destroy: true
end
