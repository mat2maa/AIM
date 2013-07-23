class CreateBins < ActiveRecord::Migration
  def change
    create_table :bins do |t|
      t.integer :order_id

      t.timestamps
    end
  end
end
