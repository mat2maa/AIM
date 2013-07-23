class AddAttachmentAssetToOpenExitDoors < ActiveRecord::Migration
  def self.up
    change_table :open_exit_doors do |t|
      t.attachment :asset
    end
  end

  def self.down
    drop_attached_file :open_exit_doors, :asset
  end
end
