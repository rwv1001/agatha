# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20081224002212) do

  create_table "people", :force => true do |t|
    t.string   "title"
    t.string   "first_name"
    t.string   "second_name"
    t.string   "postnomials"
    t.string   "salutation"
    t.string   "term_address"
    t.string   "term_city"
    t.string   "term_postcode"
    t.string   "term_home_phone"
    t.string   "term_work_phone"
    t.string   "mobile"
    t.string   "email"
    t.string   "other_address"
    t.string   "other_city"
    t.string   "other_postcode"
    t.string   "other_home_phone"
    t.string   "fax"
    t.text     "notes"
    t.integer  "entry_year"
    t.string   "next_of_kin"
    t.string   "conventual_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
