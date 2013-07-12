class CreateAeroplanesAirlines < ActiveRecord::Migration
  def self.up
    create_table :aeroplanes_airlines, :id => false, :force => true do |t|
      t.integer :aeroplane_id
      t.integer :airline_id

      t.timestamps
    end
  end

  def self.down
    drop_table :aeroplanes_airlines
  end
end
