class CreateSeatBelts < ActiveRecord::Migration
  def change
    create_table :seat_belts do |t|
      t.string :name

      t.timestamps
    end
  end
end
