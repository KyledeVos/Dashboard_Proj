# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_08_12_152457) do
  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grades", force: :cascade do |t|
    t.integer "grade_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "involvements", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "activity_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_involvements_on_activity_id"
    t.index ["student_id"], name: "index_involvements_on_student_id"
  end

  create_table "lectures", force: :cascade do |t|
    t.integer "grade_id", null: false
    t.integer "subject_id", null: false
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grade_id"], name: "index_lectures_on_grade_id"
    t.index ["subject_id"], name: "index_lectures_on_subject_id"
  end

  create_table "percentages", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "subject_id", null: false
    t.float "percentage_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_percentages_on_student_id"
    t.index ["subject_id"], name: "index_percentages_on_subject_id"
  end

  create_table "students", force: :cascade do |t|
    t.integer "grade_id", null: false
    t.string "full_name"
    t.integer "absent_days"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grade_id"], name: "index_students_on_grade_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "subject_name"
    t.boolean "mandatory_pass"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "involvements", "activities"
  add_foreign_key "involvements", "students"
  add_foreign_key "lectures", "grades"
  add_foreign_key "lectures", "subjects"
  add_foreign_key "percentages", "students"
  add_foreign_key "percentages", "subjects"
  add_foreign_key "students", "grades"
end
