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

ActiveRecord::Schema.define(version: 2018_11_05_061558) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "administrative_regions", force: :cascade do |t|
    t.text "name"
    t.text "capital"
    t.text "code"
    t.integer "area"
    t.integer "population"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "agents", force: :cascade do |t|
    t.text "username"
    t.text "full_names"
    t.text "phone_number"
    t.text "email"
    t.text "password_digest"
    t.text "password_confirmation"
    t.boolean "verified?", default: false
    t.boolean "email_verified?", default: false
    t.integer "council_id"
    t.text "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "appointments", force: :cascade do |t|
    t.integer "new_born_id"
    t.integer "hospital_id"
    t.date "date"
    t.text "purpose"
    t.boolean "kept", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "contact"
  end

  create_table "births", force: :cascade do |t|
    t.integer "council_id"
    t.text "sub_center"
    t.text "certificate_number"
    t.text "surname"
    t.text "given_name"
    t.date "date_born"
    t.text "place_born"
    t.text "sex"
    t.text "father"
    t.text "father_pb"
    t.date "father_db"
    t.text "father_res"
    t.text "father_job"
    t.text "father_n"
    t.text "father_rf"
    t.text "mother"
    t.text "mother_pb"
    t.date "mother_db"
    t.text "mother_res"
    t.text "mother_job"
    t.text "mother_n"
    t.text "mother_rf"
    t.date "date_drawn"
    t.text "declaration"
    t.text "registrar"
    t.text "secretary"
    t.date "date_done"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cause_of_deaths", force: :cascade do |t|
    t.integer "deceased_id"
    t.integer "hospital_id"
    t.integer "age"
    t.string "cause"
    t.string "sex"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "council_reminders", force: :cascade do |t|
    t.integer "council_id"
    t.integer "certificate_id"
    t.integer "count"
    t.string "certificate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "councils", force: :cascade do |t|
    t.text "name"
    t.integer "sub_division_id"
    t.text "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deaths", force: :cascade do |t|
    t.integer "council_id"
    t.text "surname"
    t.text "given_name"
    t.date "date_born"
    t.text "place_born"
    t.text "mr"
    t.date "date_died"
    t.text "place_died"
    t.text "sex"
    t.text "marital_status"
    t.text "occupation"
    t.text "residence"
    t.text "father"
    t.text "mother"
    t.date "date_drawn"
    t.text "declaration"
    t.text "d_name"
    t.text "d_occupation"
    t.text "d_capacity"
    t.text "fw_name"
    t.text "fw_occupation"
    t.text "sw_name"
    t.text "sw_occupation"
    t.text "sw_residence"
    t.text "attestator"
    t.text "registrar"
    t.text "secretary"
    t.date "date_made"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "certificate_number"
    t.text "fw_residence"
  end

  create_table "deceaseds", force: :cascade do |t|
    t.integer "hospital_id"
    t.text "d_name"
    t.date "d_db"
    t.text "d_pb"
    t.date "d_dd"
    t.text "d_pd"
    t.text "d_job"
    t.text "marital_status"
    t.text "sex"
    t.text "f_name"
    t.text "f_res"
    t.text "m_name"
    t.text "m_res"
    t.integer "num_children"
    t.text "contact"
    t.text "contact_tel"
    t.text "contact_lang"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "council_id"
  end

  create_table "divisions", force: :cascade do |t|
    t.text "name"
    t.text "capital"
    t.text "code"
    t.integer "area"
    t.integer "population"
    t.integer "administrative_region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hospital_reminders", force: :cascade do |t|
    t.integer "hospital_id"
    t.integer "count"
    t.string "period"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hospitals", force: :cascade do |t|
    t.text "username"
    t.text "name"
    t.text "phone_number"
    t.text "email"
    t.text "password"
    t.text "password_confirmation"
    t.text "password_reset"
    t.text "password_digest"
    t.date "password_reset_date"
    t.boolean "verified?", default: false
    t.boolean "email_verified?", default: false
    t.integer "council_id"
    t.text "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "infant_healths", force: :cascade do |t|
    t.integer "hospital_id"
    t.integer "new_born_id"
    t.string "term"
    t.string "fsb"
    t.string "msb"
    t.string "still_birth_cause"
    t.decimal "agpar_scor_1", precision: 4, scale: 2
    t.decimal "agpar_scor_5", precision: 4, scale: 2
    t.decimal "weight", precision: 7, scale: 2
    t.decimal "length", precision: 4, scale: 2
    t.decimal "head_circumference", precision: 4, scale: 2
    t.string "resuscitation"
    t.string "abnormalities"
    t.string "art"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "marriages", force: :cascade do |t|
    t.integer "council_id"
    t.text "certificate_number"
    t.text "husband"
    t.text "wife"
    t.date "appearance_date"
    t.date "husband_db"
    t.text "husband_pb"
    t.text "husband_job"
    t.text "husband_n"
    t.text "husband_rf"
    t.text "husband_res"
    t.text "husband_f"
    t.text "husband_m"
    t.date "wife_db"
    t.text "wife_pb"
    t.text "wife_job"
    t.text "wife_res"
    t.text "wife_f"
    t.text "wife_m"
    t.text "marriage_ownership"
    t.text "marriage_type"
    t.text "objections_raised"
    t.text "husband_fh"
    t.text "wife_fh"
    t.text "husband_w"
    t.text "wife_w"
    t.text "drawn_by"
    t.text "registrar"
    t.text "secretary"
    t.text "drawn_at"
    t.date "drawn_on"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "wife_n"
    t.text "wife_rf"
    t.boolean "divorced", default: false
  end

  create_table "maternal_healths", force: :cascade do |t|
    t.integer "hospital_id"
    t.integer "new_born_id"
    t.string "birth_attendant"
    t.string "place_of_delivery"
    t.integer "gestational_age"
    t.decimal "duration_of_labour"
    t.string "labour_on_set"
    t.string "type_of_delivery"
    t.string "placenta_separation"
    t.string "placenta"
    t.string "membranes"
    t.string "nature_of_cord"
    t.integer "vessels"
    t.decimal "blood_loss", precision: 6, scale: 2
    t.string "source_of_pph"
    t.string "episiotomy"
    t.string "laceration"
    t.integer "sutures"
    t.string "uterus"
    t.string "mothers_condition"
    t.string "post_partum_complications"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "age"
  end

  create_table "new_borns", force: :cascade do |t|
    t.integer "hospital_id"
    t.text "child_code"
    t.text "c_name"
    t.date "c_db"
    t.text "c_pb"
    t.text "sex"
    t.text "f_name"
    t.text "f_res"
    t.date "f_db"
    t.text "f_pb"
    t.text "f_tel"
    t.text "m_name"
    t.text "m_res"
    t.date "m_db"
    t.text "m_pb"
    t.text "m_tel"
    t.text "attended_clinic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "council_id"
  end

  create_table "sub_divisions", force: :cascade do |t|
    t.text "name"
    t.text "capital"
    t.text "code"
    t.integer "area"
    t.integer "population"
    t.integer "division_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vaccination_calendars", force: :cascade do |t|
    t.integer "new_born_id"
    t.integer "hospital_id"
    t.boolean "at_birth", default: false
    t.boolean "six_weeks", default: false
    t.boolean "ten_weeks", default: false
    t.boolean "fourteen_weeks", default: false
    t.boolean "six_months", default: false
    t.boolean "nine_months", default: false
    t.boolean "one_year", default: false
    t.boolean "recent_appointment", default: false
    t.date "at_birth_d"
    t.date "six_weeks_d"
    t.date "ten_weeks_d"
    t.date "fourteen_weeks_d"
    t.date "six_months_d"
    t.date "nine_months_d"
    t.date "one_year_d"
    t.date "recent_appointment_d"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
