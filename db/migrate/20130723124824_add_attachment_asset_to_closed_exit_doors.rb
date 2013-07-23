class AddAttachmentAssetToClosedExitDoors < ActiveRecord::Migration
  def self.up
    change_table :closed_exit_doors do |t|
      t.attachment :asset
    end
  end

  def self.down
    drop_attached_file :closed_exit_doors, :asset
  end
end
