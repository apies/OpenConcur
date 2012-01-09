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

ActiveRecord::Schema.define(:version => 20120109044200) do

  create_table "charges", :force => true do |t|
    t.string   "cardholder"
    t.date     "date_of_charge"
    t.string   "description"
    t.float    "amount"
    t.string   "reference_number"
    t.string   "air_route"
    t.string   "air_traveler"
    t.integer  "user_id"
    t.integer  "report_id"
    t.boolean  "billable"
    t.boolean  "approved"
    t.string   "business_purpose"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "upload_comment"
  end

  create_table "reports", :force => true do |t|
    t.float    "total_amount"
    t.date     "report_date"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "upload_comment"
    t.string   "cardholder"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
