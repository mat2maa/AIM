class CreateLifeJacketAges < ActiveRecord::Migration
  def change
    create_table :life_jacket_ages do |t|
      t.string :age

      t.timestamps
    end
  end
end
