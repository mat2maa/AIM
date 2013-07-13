# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130713101550) do

  create_table "aeroplanes", :force => true do |t|
    t.string   "name"
    t.string   "manufacturer"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "airlines", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.integer  "user_profile_id"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "livery_file_name"
    t.string   "livery_content_type"
    t.integer  "livery_file_size"
    t.datetime "livery_updated_at"
    t.string   "branding_file_name"
    t.string   "branding_content_type"
    t.integer  "branding_file_size"
    t.datetime "branding_updated_at"
  end

  create_table "life_jacket_ages", :force => true do |t|
    t.string   "age"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "life_jackets", :force => true do |t|
    t.string   "name"
    t.string   "manufacturer"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.integer  "life_jacket_age_id"
    t.string   "location_file_name"
    t.string   "location_content_type"
    t.integer  "location_file_size"
    t.datetime "location_updated_at"
    t.string   "open_mechanism_file_name"
    t.string   "open_mechanism_content_type"
    t.integer  "open_mechanism_file_size"
    t.datetime "open_mechanism_updated_at"
    t.string   "closed_mechanism_file_name"
    t.string   "closed_mechanism_content_type"
    t.integer  "closed_mechanism_file_size"
    t.datetime "closed_mechanism_updated_at"
  end

  create_table "life_jackets_orders", :id => false, :force => true do |t|
    t.integer  "life_jacket_id"
    t.integer  "order_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "orders", :force => true do |t|
    t.string   "name"
    t.integer  "airline_id"
    t.integer  "aeroplane_id"
    t.integer  "safety_card_id"
    t.integer  "seat_layout_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.string   "console_file_name"
    t.string   "console_content_type"
    t.integer  "console_file_size"
    t.datetime "console_updated_at"
    t.string   "bin_file_name"
    t.string   "bin_content_type"
    t.integer  "bin_file_size"
    t.datetime "bin_updated_at"
    t.string   "lavatory_file_name"
    t.string   "lavatory_content_type"
    t.integer  "lavatory_file_size"
    t.datetime "lavatory_updated_at"
    t.string   "open_exit_door_file_name"
    t.string   "open_exit_door_content_type"
    t.integer  "open_exit_door_file_size"
    t.datetime "open_exit_door_updated_at"
    t.string   "closed_exit_door_file_name"
    t.string   "closed_exit_door_content_type"
    t.integer  "closed_exit_door_file_size"
    t.datetime "closed_exit_door_updated_at"
    t.string   "carpet_texture_file_name"
    t.string   "carpet_texture_content_type"
    t.integer  "carpet_texture_file_size"
    t.datetime "carpet_texture_updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "safety_cards", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.integer  "airline_id"
    t.integer  "aeroplane_id"
    t.string   "card_image_file_name"
    t.string   "card_image_content_type"
    t.integer  "card_image_file_size"
    t.datetime "card_image_updated_at"
  end

  create_table "seat_belts", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.integer  "seat_id"
    t.string   "belt_image_file_name"
    t.string   "belt_image_content_type"
    t.integer  "belt_image_file_size"
    t.datetime "belt_image_updated_at"
  end

  create_table "seat_classes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "seat_layouts", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.string   "layout_image_file_name"
    t.string   "layout_image_content_type"
    t.integer  "layout_image_file_size"
    t.datetime "layout_image_updated_at"
  end

  create_table "seat_manufacturers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "seats", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.integer  "seat_manufacturer_id"
    t.integer  "seat_class_id"
    t.integer  "order_id"
    t.string   "texture_file_name"
    t.string   "texture_content_type"
    t.integer  "texture_file_size"
    t.datetime "texture_updated_at"
  end

  create_table "user_profiles", :force => true do |t|
    t.string   "contact_name"
    t.text     "address"
    t.string   "phone"
    t.string   "mobile"
    t.string   "fax"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
