class CreateBrandings < ActiveRecord::Migration
  def change
    create_table :brandings do |t|
      t.integer :order_id

      t.timestamps
    end
  end
end
