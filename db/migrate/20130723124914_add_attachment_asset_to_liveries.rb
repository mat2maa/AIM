class AddAttachmentAssetToLiveries < ActiveRecord::Migration
  def self.up
    change_table :liveries do |t|
      t.attachment :asset
    end
  end

  def self.down
    drop_attached_file :liveries, :asset
  end
end
