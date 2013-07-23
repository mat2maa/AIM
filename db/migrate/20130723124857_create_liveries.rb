class CreateLiveries < ActiveRecord::Migration
  def change
    create_table :liveries do |t|
      t.integer :order_id

      t.timestamps
    end
  end
end
