class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.integer :airline_id
      t.integer :aeroplane_id
      t.integer :safety_card_id
      t.integer :seat_layout_id

      t.timestamps
    end
  end
end
