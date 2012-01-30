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

ActiveRecord::Schema.define(:version => 20120130053139) do

  create_table "comments", :force => true do |t|
    t.integer  "post_id"
    t.integer  "picture_id"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type_of"
    t.integer  "creator_id"
    t.integer  "element_id"
    t.integer  "profile_id"
  end

  create_table "fans", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type_of_content"
    t.integer  "creator_id"
    t.integer  "element_id"
    t.integer  "profile_id"
  end

  create_table "huddlers_cards", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "organizations", :force => true do |t|
    t.string   "organization_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "description",       :default => ""
    t.string   "contact_number",    :default => ""
    t.string   "street_address",    :default => ""
    t.string   "city",              :default => ""
    t.string   "state",             :default => ""
    t.string   "zipcode",           :default => ""
    t.string   "website",           :default => ""
  end

  create_table "organizations_users", :id => false, :force => true do |t|
    t.integer "organization_id"
    t.integer "user_id"
  end

  create_table "pictures", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
  end

  create_table "posts", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "body"
    t.boolean  "friend_vs_group"
    t.boolean  "status_update"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name",                            :default => ""
    t.string   "last_name",                             :default => ""
    t.integer  "height_ft"
    t.integer  "height_in"
    t.integer  "weight"
    t.integer  "age"
    t.string   "city",                                  :default => ""
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
