class AddAttachmentFrontBackToSafetyCards < ActiveRecord::Migration
  def self.up
    change_table :safety_cards do |t|
      t.attachment :front
      t.attachment :back
    end
  end

  def self.down
    drop_attached_file :safety_cards, :front
    drop_attached_file :safety_cards, :back
  end
end
