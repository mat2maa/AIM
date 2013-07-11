class CreateAirlinesAeroplanes < ActiveRecord::Migration
  def self.up
    create_table :airlines_aeroplanes, :id => false, :force => true do |t|
      t.integer :airline_id
      t.integer :aeroplane_id

      t.timestamps
    end
  end

  def self.down
    drop_table :airlines_aeroplanes
  end
end
