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

ActiveRecord::Schema.define(:version => 20121204010742) do

  create_table "comments", :force => true do |t|
    t.integer "user_id"
    t.integer "photo_id"
    t.text    "comment_text"
    t.timestamps
  end

  create_table "likes", :force => true do |t|
    t.text "user_id"
    t.text "photo_id"
    t.timestamps
  end

  create_table "photos", :force => true do |t|
    t.text     "user_id"
    t.text     "title"
    t.text     "city"
    t.text     "state"
    t.text     "description"
    t.text     "file_location"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.float "latitude"
    t.float "longitude"
    t.timestamps
  end

  create_table "users", :force => true do |t|
    t.text "username"
    t.text "city"
    t.text "state"
    t.text "bio"
    t.float "latitude"
    t.float "longitude"
    t.text "password_hash"
    t.text "password_salt"
    t.timestamps
  end

end
