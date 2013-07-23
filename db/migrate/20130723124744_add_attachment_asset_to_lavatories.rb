class AddAttachmentAssetToLavatories < ActiveRecord::Migration
  def self.up
    change_table :lavatories do |t|
      t.attachment :asset
    end
  end

  def self.down
    drop_attached_file :lavatories, :asset
  end
end
