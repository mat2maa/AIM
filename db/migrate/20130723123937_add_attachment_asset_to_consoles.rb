class AddAttachmentAssetToConsoles < ActiveRecord::Migration
  def self.up
    change_table :consoles do |t|
      t.attachment :asset
    end
  end

  def self.down
    drop_attached_file :consoles, :asset
  end
end
