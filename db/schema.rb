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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180731194812) do

  create_table "customers", force: :cascade do |t|
    t.string  "name"
    t.string  "preference"
    t.integer "budget"
    t.string  "location"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "restaurant_id"
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["restaurant_id"], name: "index_orders_on_restaurant_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.time   "opening_time"
    t.time   "closing_time"
    t.string "food_type"
    t.string "affordability"
    t.string "location"
  end

end
