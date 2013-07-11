class CreateAeroplanesSeatLayouts < ActiveRecord::Migration
  def self.up
    create_table :aeroplanes_seat_layouts, :id => false, :force => true do |t|
      t.integer :aeroplane_id
      t.integer :seat_layout_id

      t.timestamps
    end
  end

  def self.down
    drop_table :aeroplanes_seat_layouts
  end
end
