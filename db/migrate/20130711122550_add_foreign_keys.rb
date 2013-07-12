class AddForeignKeys < ActiveRecord::Migration
  def self.up
    add_column :user_profiles, :user_id, :integer
    add_column :airlines, :user_profile_id, :integer
    add_column :safety_cards, :airline_id, :integer
    add_column :safety_cards, :aeroplane_id, :integer
    add_column :seat_manufacturers, :seat_id, :integer
    add_column :seat_classes, :seat_id, :integer
    add_column :seat_belts, :seat_id, :integer
  end

  def self.down
    remove_column :user_profiles, :user_id
    remove_column :airlines, :user_profile_id
    remove_column :safety_cards, :airline_id
    remove_column :safety_cards, :aeroplane_id
    remove_column :seat_manufacturers, :seat_id
    remove_column :seat_classes, :seat_id
    remove_column :seat_belts, :seat_id
  end
end
