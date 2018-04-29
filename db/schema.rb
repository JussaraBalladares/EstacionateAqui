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

ActiveRecord::Schema.define(version: 20180428123614) do

  create_table "distritos", force: :cascade do |t|
    t.string "codigo"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "duenos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estacionamientos", force: :cascade do |t|
    t.string "descripcion"
    t.string "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "telefono"
    t.integer "distrito_id"
    t.integer "tipo_id"
    t.integer "ubicacion_id"
    t.string "direccionmap"
    t.string "dimension"
    t.decimal "precioporhora"
    t.index ["distrito_id"], name: "index_estacionamientos_on_distrito_id"
    t.index ["tipo_id"], name: "index_estacionamientos_on_tipo_id"
    t.index ["ubicacion_id"], name: "index_estacionamientos_on_ubicacion_id"
  end

  create_table "tipos", force: :cascade do |t|
    t.string "codigo"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ubicacions", force: :cascade do |t|
    t.string "codigo"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
