class CreateAeroplanesLifeJackets < ActiveRecord::Migration
  def self.up
    create_table :aeroplanes_life_jackets, :id => false, :force => true do |t|
      t.integer :aeroplane_id
      t.integer :life_jacket_id

      t.timestamps
    end
  end

  def self.down
    drop_table :aeroplanes_life_jackets
  end
end
