class CreateScripts < ActiveRecord::Migration
  def change
    create_table :scripts do |t|
      t.integer :aeroplane_id

      t.timestamps
    end
  end
end
