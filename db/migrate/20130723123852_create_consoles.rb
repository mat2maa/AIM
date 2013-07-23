class CreateConsoles < ActiveRecord::Migration
  def change
    create_table :consoles do |t|
      t.integer :order_id

      t.timestamps
    end
  end
end
