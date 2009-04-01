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

ActiveRecord::Schema.define(:version => 20090401225651) do

  create_table "attendee_csvs", :force => true do |t|
    t.integer "student"
    t.integer "lectures_course"
    t.boolean "compulsory"
    t.boolean "examined"
    t.string  "mark"
  end

  create_table "attendees", :force => true do |t|
    t.integer  "lecture_id", :null => false
    t.integer  "person_id",  :null => false
    t.boolean  "examined"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "compulsory"
    t.integer  "mark"
    t.integer  "mark_type"
  end

  create_table "course_csvs", :force => true do |t|
    t.string  "course_name"
    t.string  "paper_number"
    t.boolean "studium_course"
    t.boolean "evening_course"
  end

  create_table "courses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "group_members", :force => true do |t|
    t.integer  "group_id"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", :force => true do |t|
    t.string   "group_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "institutions", :force => true do |t|
    t.string   "old_name"
    t.string   "title"
    t.string   "first_name"
    t.string   "second_name"
    t.string   "salutation"
    t.string   "term_address"
    t.string   "term_city"
    t.string   "term_postcode"
    t.string   "conventual_name"
    t.boolean  "institution_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lecture_csvs", :force => true do |t|
    t.integer  "term"
    t.integer  "course"
    t.integer  "tutor"
    t.integer  "number_of_lectures"
    t.integer  "number_of_classes"
    t.integer  "hours"
    t.text     "notes"
    t.string   "examination"
    t.integer  "day"
    t.datetime "lecture_time"
    t.string   "week"
  end

  create_table "lectures", :force => true do |t|
    t.integer  "course_id",          :null => false
    t.integer  "person_id",          :null => false
    t.integer  "term"
    t.text     "exam"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "day"
    t.time     "lecture_time"
    t.integer  "location"
    t.integer  "number_of_classes"
    t.integer  "number_of_lectures"
    t.integer  "hours"
    t.text     "notes"
  end

  create_table "pcourses", :force => true do |t|
    t.integer  "course_id",    :null => false
    t.integer  "programme_id", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
    t.integer  "institution"
    t.integer  "religious_house"
  end

  create_table "people_csv", :id => false, :force => true do |t|
    t.integer "did",                             :null => false
    t.string  "old_name",         :limit => nil
    t.string  "title",            :limit => nil
    t.string  "first_name",       :limit => nil
    t.string  "second_name",      :limit => nil
    t.string  "postnominals",     :limit => nil
    t.string  "salutation",       :limit => nil
    t.string  "term_address",     :limit => nil
    t.string  "term_city",        :limit => nil
    t.string  "term_postcode",    :limit => nil
    t.string  "term_home_phone",  :limit => nil
    t.string  "term_work_phone",  :limit => nil
    t.string  "mobile",           :limit => nil
    t.string  "email",            :limit => nil
    t.string  "other_address",    :limit => nil
    t.string  "other_city",       :limit => nil
    t.string  "other_postcode",   :limit => nil
    t.string  "other_home_phone", :limit => nil
    t.string  "fax",              :limit => nil
    t.text    "notes"
    t.integer "supervisor"
    t.integer "entry_year"
    t.boolean "matriculated"
    t.boolean "senior_status"
    t.integer "programme"
    t.integer "religious_house"
    t.string  "next_of_kin",      :limit => nil
    t.integer "home_institution"
    t.string  "conventual_name",  :limit => nil
  end

  create_table "person_csvs", :force => true do |t|
    t.string  "old_name"
    t.string  "title"
    t.string  "first_name"
    t.string  "second_name"
    t.string  "postnominals"
    t.string  "salutation"
    t.string  "term_address"
    t.string  "term_city"
    t.string  "term_postcode"
    t.string  "term_home_phone"
    t.string  "term_work_phone"
    t.string  "mobile"
    t.string  "email"
    t.string  "other_address"
    t.string  "other_city"
    t.string  "other_postcode"
    t.string  "other_home_phone"
    t.string  "Fax"
    t.text    "Notes"
    t.integer "supervisor"
    t.integer "entry_year"
    t.integer "matriculated"
    t.boolean "senior_status"
    t.integer "programme"
    t.integer "religious_house"
    t.string  "next_of_kin"
    t.integer "home_institution"
    t.string  "conventual_name"
  end

  create_table "personstatus_csvs", :force => true do |t|
    t.integer "person_id"
    t.integer "status_id"
  end

  create_table "programmes", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "status_csvs", :force => true do |t|
    t.string  "status"
    t.boolean "student"
    t.boolean "tutor"
    t.integer "sort_key"
  end

  create_table "student_courses", :force => true do |t|
    t.integer  "person_id",    :null => false
    t.integer  "course_id",    :null => false
    t.integer  "term"
    t.integer  "year"
    t.string   "grade"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "programme_id"
  end

  create_table "student_programmes", :force => true do |t|
    t.integer  "person_id",    :null => false
    t.integer  "programme_id", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "term_csvs", :force => true do |t|
    t.integer  "name"
    t.datetime "startdate"
    t.integer  "year"
  end

  create_table "terms", :force => true do |t|
    t.integer  "term_number"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "test_csv", :id => false, :force => true do |t|
    t.integer "did",                     :null => false
    t.string  "old_name", :limit => nil
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "hashed_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
