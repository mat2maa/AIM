class CreateSeatBeltAssets < ActiveRecord::Migration
  def change
    create_table :seat_belt_assets do |t|
      t.integer :seat_id

      t.timestamps
    end
  end
end
