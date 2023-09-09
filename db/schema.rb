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

ActiveRecord::Schema[7.0].define(version: 2023_09_09_150948) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alt_questions", force: :cascade do |t|
    t.bigint "tema_id", null: false
    t.text "enunciado", null: false
    t.string "alternativa1", null: false
    t.string "tip1", null: false
    t.string "alternativa2", null: false
    t.string "tip2", null: false
    t.string "alternativa3", null: false
    t.string "tip3", null: false
    t.string "alternativa4"
    t.string "tip4"
    t.string "respuesta", null: false
    t.integer "dificultad", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tema_id"], name: "index_alt_questions_on_tema_id"
  end

  create_table "dev_questions", force: :cascade do |t|
    t.bigint "tema_id", null: false
    t.text "enunciado"
    t.integer "dificultad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tema_id"], name: "index_dev_questions_on_tema_id"
  end

  create_table "temas", force: :cascade do |t|
    t.string "materia_actual"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "nombre", null: false
    t.string "apellido", null: false
    t.integer "modelo_alumno", default: 0
    t.integer "materia_actual", default: 1
    t.integer "profile", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "alt_questions", "temas"
  add_foreign_key "dev_questions", "temas"
end
