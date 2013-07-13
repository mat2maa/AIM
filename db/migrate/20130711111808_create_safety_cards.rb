class CreateSafetyCards < ActiveRecord::Migration
  def change
    create_table :safety_cards do |t|
      t.string :name

      t.timestamps
    end
  end
end
