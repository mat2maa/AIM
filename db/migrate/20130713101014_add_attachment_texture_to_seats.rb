class AddAttachmentTextureToSeats < ActiveRecord::Migration
  def self.up
    change_table :seats do |t|
      t.attachment :texture
    end
  end

  def self.down
    drop_attached_file :seats, :texture
  end
end
