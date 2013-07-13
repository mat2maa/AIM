class AddAttachmentCardImageToSafetyCards < ActiveRecord::Migration
  def self.up
    change_table :safety_cards do |t|
      t.attachment :card_image
    end
  end

  def self.down
    drop_attached_file :safety_cards, :card_image
  end
end
