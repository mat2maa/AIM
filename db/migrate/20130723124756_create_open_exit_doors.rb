class CreateOpenExitDoors < ActiveRecord::Migration
  def change
    create_table :open_exit_doors do |t|
      t.integer :order_id

      t.timestamps
    end
  end
end
