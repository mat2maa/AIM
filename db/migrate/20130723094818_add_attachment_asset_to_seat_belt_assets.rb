class AddAttachmentAssetToSeatBeltAssets < ActiveRecord::Migration
  def self.up
    change_table :seat_belt_assets do |t|
      t.attachment :asset
    end
  end

  def self.down
    drop_attached_file :seat_belt_assets, :asset
  end
end
