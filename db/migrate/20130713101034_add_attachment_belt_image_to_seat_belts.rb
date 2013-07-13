class AddAttachmentBeltImageToSeatBelts < ActiveRecord::Migration
  def self.up
    change_table :seat_belts do |t|
      t.attachment :belt_image
    end
  end

  def self.down
    drop_attached_file :seat_belts, :belt_image
  end
end
