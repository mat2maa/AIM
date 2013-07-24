class CreateScenes < ActiveRecord::Migration
  def change
    create_table :scenes do |t|
      t.integer :script_id
      t.integer :sequence_position
      t.text :storyboard
      t.text :english_subtitle
      t.text :foreign_subtitle_1
      t.text :foreign_subtitle_2

      t.timestamps
    end
  end
end
