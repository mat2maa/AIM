class CreateAeroplanes < ActiveRecord::Migration
  def change
    create_table :aeroplanes do |t|
      t.string :name
      t.string :manufacturer

      t.timestamps
    end
  end
end
