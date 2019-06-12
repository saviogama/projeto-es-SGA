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

ActiveRecord::Schema.define(version: 20190612024237) do

  create_table "administradors", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  create_table "contratos", force: :cascade do |t|
    t.string "n_contrato"
    t.string "data"
    t.string "n_lic"
    t.string "desc"
    t.integer "fornecedor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fornecedor_id"], name: "index_contratos_on_fornecedor_id"
  end

  create_table "estoques", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fornecedors", force: :cascade do |t|
    t.string "nome"
    t.string "cnpj"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "nome"
    t.string "data_val"
    t.string "n_lote"
    t.string "desc"
    t.integer "unidade"
    t.integer "estoque_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["estoque_id"], name: "index_items_on_estoque_id"
  end

end
