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

ActiveRecord::Schema.define(:version => 20121129100315) do

  create_table "drink_items", :force => true do |t|
    t.integer  "place_id"
    t.integer  "drink_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.decimal  "price"
  end

  create_table "drinks", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "alcohol",     :limit => 3
    t.string   "image_url"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "places", :force => true do |t|
    t.string   "country"
    t.string   "city"
    t.string   "region"
    t.string   "street"
    t.string   "building"
    t.string   "title"
    t.string   "image_url"
    t.string   "nearest_metro"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
