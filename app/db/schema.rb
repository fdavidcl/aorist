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

ActiveRecord::Schema.define(version: 20151229185457) do

  create_table "anunciantes", force: :cascade do |t|
    t.string   "nombre"
    t.string   "web"
    t.string   "fiscales"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "anuncios", force: :cascade do |t|
    t.integer  "anunciante_id"
    t.text     "contenido"
    t.string   "URL"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "anuncios", ["anunciante_id"], name: "index_anuncios_on_anunciante_id"

  create_table "audiences", force: :cascade do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "cobros", force: :cascade do |t|
    t.float    "importe"
    t.date     "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contrato_anunciantes", force: :cascade do |t|
    t.float    "importe"
    t.date     "fecha"
    t.string   "descripcion"
    t.date     "duracion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "contrato_medios", force: :cascade do |t|
    t.float    "importe"
    t.date     "fecha"
    t.string   "descripcion"
    t.date     "duracion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "espacios", force: :cascade do |t|
    t.integer  "medio_id"
    t.boolean  "multimedia"
    t.boolean  "enlace"
    t.integer  "ancho"
    t.integer  "alto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "espacios", ["medio_id"], name: "index_espacios_on_medio_id"

  create_table "medios", force: :cascade do |t|
    t.string   "nombre"
    t.string   "web"
    t.string   "fiscales"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pagos", force: :cascade do |t|
    t.float    "importe"
    t.date     "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
