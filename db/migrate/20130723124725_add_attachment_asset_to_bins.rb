class AddAttachmentAssetToBins < ActiveRecord::Migration
  def self.up
    change_table :bins do |t|
      t.attachment :asset
    end
  end

  def self.down
    drop_attached_file :bins, :asset
  end
end
