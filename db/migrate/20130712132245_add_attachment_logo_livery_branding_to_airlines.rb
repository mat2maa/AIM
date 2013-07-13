class AddAttachmentLogoLiveryBrandingToAirlines < ActiveRecord::Migration
  def self.up
    change_table :airlines do |t|
      t.attachment :logo
      t.attachment :livery
      t.attachment :branding
    end
  end

  def self.down
    drop_attached_file :airlines, :logo
    drop_attached_file :airlines, :livery
    drop_attached_file :airlines, :branding
  end
end
