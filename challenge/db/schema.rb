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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20191108065930) do

  create_table "charges", force: :cascade do |t|
    t.integer  "created",     limit: 4
    t.boolean  "paid",                                            default: false, null: false
    t.decimal  "amount",                  precision: 6, scale: 2, default: 0.0,   null: false
    t.string   "currency",    limit: 255,                         default: "USD", null: false
    t.boolean  "refunded",                                        default: false, null: false
    t.integer  "customer_id", limit: 4
    t.datetime "created_at",                                                      null: false
    t.datetime "updated_at",                                                      null: false
  end

  add_index "charges", ["created"], name: "index_charges_on_created", using: :btree
  add_index "charges", ["customer_id"], name: "index_charges_on_customer_id", using: :btree
  add_index "charges", ["refunded"], name: "index_charges_on_refunded", using: :btree

  create_table "customers", force: :cascade do |t|
    t.string   "first_name", limit: 255, null: false
    t.string   "last_name",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
