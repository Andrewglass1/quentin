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

ActiveRecord::Schema.define(:version => 20150210141611) do

  create_table "videos", :force => true do |t|
    t.string   "host"
    t.string   "host_identifier"
    t.string   "title"
    t.string   "image_url"
    t.integer  "order"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.string   "screen_shot_file_name"
    t.string   "screen_shot_content_type"
    t.integer  "screen_shot_file_size"
    t.datetime "screen_shot_updated_at"
  end

end
