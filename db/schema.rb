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

ActiveRecord::Schema.define(version: 20160407132617) do

  create_table "couleurs", force: :cascade do |t|
    t.string   "nom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "couleurs", ["id"], name: "index_couleurs_on_id"
  add_index "couleurs", ["nom"], name: "index_couleurs_on_nom"

  create_table "couleurs_motos", id: false, force: :cascade do |t|
    t.integer "couleur_id", null: false
    t.integer "moto_id",    null: false
  end

  add_index "couleurs_motos", ["couleur_id"], name: "index_couleurs_motos_on_couleur_id"
  add_index "couleurs_motos", ["moto_id"], name: "index_couleurs_motos_on_moto_id"

  create_table "motos", force: :cascade do |t|
    t.string  "nom"
    t.integer "poids"
    t.integer "cylindree"
  end

end
