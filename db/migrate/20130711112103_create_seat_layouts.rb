class CreateSeatLayouts < ActiveRecord::Migration
  def change
    create_table :seat_layouts do |t|
      t.string :name

      t.timestamps
    end
  end
end
