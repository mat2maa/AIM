class AddForeignKeys < ActiveRecord::Migration
  def self.up
    add_column :user_profiles, :user_id, :integer
    add_column :airlines, :user_profile_id, :integer
    add_column :life_jackets, :life_jacket_age_id, :integer
    add_column :safety_cards, :order_id, :integer
    add_column :seats, :seat_manufacturer_id, :integer
    add_column :seats, :seat_class_id, :integer
    add_column :seats, :order_id, :integer
    add_column :seat_belts, :seat_id, :integer
  end

  def self.down
    remove_column :user_profiles, :user_id
    remove_column :airlines, :user_profile_id
    remove_column :life_jackets, :life_jacket_age_id
    remove_column :safety_cards, :order_id
    remove_column :seats, :seat_manufacturer_id
    remove_column :seats, :seat_class_id
    remove_column :seats, :order_id
    remove_column :seat_belts, :seat_id
  end
end
