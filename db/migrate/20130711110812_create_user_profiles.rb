class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.string :contact_name
      t.text :address
      t.string :phone
      t.string :mobile
      t.string :fax

      t.timestamps
    end
  end
end
