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

ActiveRecord::Schema.define(:version => 20121110191113) do

  create_table "additional_programs", :force => true do |t|
    t.string  "name"
    t.integer "business_id"
  end

  create_table "businesses", :force => true do |t|
    t.string  "type_of_care"
    t.string  "name_of_contact"
    t.string  "website"
    t.string  "accreditation"
    t.string  "financial_assistance"
    t.integer "max_age"
    t.integer "min_age"
    t.integer "vacancies"
    t.string  "name"
    t.string  "telephone"
    t.string  "email"
    t.integer "location_id"
  end

  create_table "financial_assistances", :force => true do |t|
    t.string  "name"
    t.integer "business_id"
  end

  create_table "locations", :force => true do |t|
    t.string "state"
    t.string "address"
    t.string "city"
    t.string "county"
    t.string "zipp"
    t.float  "long"
    t.float  "lat"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "users", :force => true do |t|
    t.string   "username",                         :null => false
    t.string   "email",                            :null => false
    t.string   "crypted_password",                 :null => false
    t.string   "password_salt",                    :null => false
    t.string   "persistence_token",                :null => false
    t.integer  "login_count",       :default => 0, :null => false
    t.datetime "last_request_at"
    t.datetime "last_login_at"
    t.datetime "current_login_at"
    t.string   "last_login_ip"
    t.string   "current_login_ip"
  end

  add_index "users", ["last_request_at"], :name => "index_users_on_last_request_at"
  add_index "users", ["persistence_token"], :name => "index_users_on_persistence_token"
  add_index "users", ["username"], :name => "index_users_on_username"

end
