class CreateLavatories < ActiveRecord::Migration
  def change
    create_table :lavatories do |t|
      t.integer :order_id

      t.timestamps
    end
  end
end
