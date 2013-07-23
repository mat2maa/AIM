class CreateClosedExitDoors < ActiveRecord::Migration
  def change
    create_table :closed_exit_doors do |t|
      t.integer :order_id

      t.timestamps
    end
  end
end
