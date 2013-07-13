class CreateSeatClasses < ActiveRecord::Migration
  def change
    create_table :seat_classes do |t|
      t.string :name

      t.timestamps
    end
  end
end
