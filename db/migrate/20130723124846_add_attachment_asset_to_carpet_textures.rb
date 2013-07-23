class AddAttachmentAssetToCarpetTextures < ActiveRecord::Migration
  def self.up
    change_table :carpet_textures do |t|
      t.attachment :asset
    end
  end

  def self.down
    drop_attached_file :carpet_textures, :asset
  end
end
