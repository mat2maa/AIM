class AddAttachmentConsoleBinLavatoryOpenExitDoorClosedExitDoorCarpetTextureToOrders < ActiveRecord::Migration
  def self.up
    change_table :orders do |t|
      t.attachment :console
      t.attachment :bin
      t.attachment :lavatory
      t.attachment :open_exit_door
      t.attachment :closed_exit_door
      t.attachment :carpet_texture
    end
  end

  def self.down
    drop_attached_file :orders, :console
    drop_attached_file :orders, :bin
    drop_attached_file :orders, :lavatory
    drop_attached_file :orders, :open_exit_door
    drop_attached_file :orders, :closed_exit_door
    drop_attached_file :orders, :carpet_texture
  end
end
