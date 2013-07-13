class AddAttachmentLayoutImageToSeatLayouts < ActiveRecord::Migration
  def self.up
    change_table :seat_layouts do |t|
      t.attachment :layout_image
    end
  end

  def self.down
    drop_attached_file :seat_layouts, :layout_image
  end
end
