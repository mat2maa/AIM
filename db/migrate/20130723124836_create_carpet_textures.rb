class CreateCarpetTextures < ActiveRecord::Migration
  def change
    create_table :carpet_textures do |t|
      t.integer :order_id

      t.timestamps
    end
  end
end
