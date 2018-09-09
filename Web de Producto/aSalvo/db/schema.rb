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

ActiveRecord::Schema.define(version: 2018_09_09_131711) do

  create_table "emergencia", force: :cascade do |t|
    t.integer "id_emergencia"
    t.integer "id_usuario_id"
    t.string "tipo_emergencia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id_usuario_id"], name: "index_emergencia_on_id_usuario_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "gender"
    t.string "email"
    t.integer "telefono"
    t.string "direccion"
    t.date "cumpleaños"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
