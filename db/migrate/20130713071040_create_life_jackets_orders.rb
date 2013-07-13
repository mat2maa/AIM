class CreateLifeJacketsOrders < ActiveRecord::Migration
  def self.up
    create_table :life_jackets_orders, :id => false, :force => true do |t|
      t.integer :life_jacket_id
      t.integer :order_id

      t.timestamps
    end
  end

  def self.down
    drop_table :life_jackets_orders
  end
end
