class CreateSeatManufacturers < ActiveRecord::Migration
  def change
    create_table :seat_manufacturers do |t|
      t.string :name

      t.timestamps
    end
  end
end
