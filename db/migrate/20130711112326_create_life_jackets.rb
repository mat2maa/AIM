class CreateLifeJackets < ActiveRecord::Migration
  def change
    create_table :life_jackets do |t|
      t.string :name

      t.timestamps
    end
  end
end
