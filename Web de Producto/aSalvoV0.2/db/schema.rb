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

ActiveRecord::Schema.define(version: 2018_10_08_034304) do

  create_table "users", force: :cascade do |t|
    t.string "usuario_nombre",null: false
    t.string "usuario_apellido",null: false
    t.string "usuario_mail",null: false
    t.integer "usuario_cel",null: false
    t.string "usuario_sexo",null: false
    t.date "usuario_fechaNacimiento",null: false
    t.string "usuario_ubicacion"
    t.string "password_digest",null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_mail"], name: "index_users_on_usuario_mail", unique: true
  end

end
