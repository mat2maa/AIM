class AddAttachmentLocationOpenMechanismClosedMechanismToLifeJackets < ActiveRecord::Migration
  def self.up
    change_table :life_jackets do |t|
      t.attachment :location
      t.attachment :open_mechanism
      t.attachment :closed_mechanism
    end
  end

  def self.down
    drop_attached_file :life_jackets, :location
    drop_attached_file :life_jackets, :open_mechanism
    drop_attached_file :life_jackets, :closed_mechanism
  end
end
