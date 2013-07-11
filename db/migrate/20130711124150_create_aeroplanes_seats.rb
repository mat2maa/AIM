class CreateAeroplanesSeats < ActiveRecord::Migration
  def self.up
    create_table :aeroplanes_seats, :id => false, :force => true do |t|
      t.integer :aeroplane_id
      t.integer :seat_id

      t.timestamps
    end
  end

  def self.down
    drop_table :aeroplanes_seats
  end
end
