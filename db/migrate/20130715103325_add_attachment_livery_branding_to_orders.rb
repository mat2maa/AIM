class AddAttachmentLiveryBrandingToOrders < ActiveRecord::Migration
  def self.up
    change_table :orders do |t|
      t.attachment :livery
      t.attachment :branding
    end
  end

  def self.down
    drop_attached_file :orders, :livery
    drop_attached_file :orders, :branding
  end
end
