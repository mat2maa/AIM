class AddAttachmentAssetToBrandings < ActiveRecord::Migration
  def self.up
    change_table :brandings do |t|
      t.attachment :asset
    end
  end

  def self.down
    drop_attached_file :brandings, :asset
  end
end
