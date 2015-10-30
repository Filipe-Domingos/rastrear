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

ActiveRecord::Schema.define(version: 20151019232031) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categoria_cnhs", force: :cascade do |t|
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "condutores", force: :cascade do |t|
    t.string   "nome"
    t.string   "cnh"
    t.date     "vencimento_cnh"
    t.integer  "ddd"
    t.integer  "telefone"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "categoria_cnh_id"
  end

  add_index "condutores", ["categoria_cnh_id"], name: "index_condutores_on_categoria_cnh_id", using: :btree

  create_table "cor_veiculos", force: :cascade do |t|
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "manutencao_preventivas", force: :cascade do |t|
    t.date     "data_manutencao"
    t.string   "email"
    t.boolean  "email_enviado"
    t.float    "kilometragem_manutencao"
    t.integer  "veiculo_id"
    t.string   "descricao"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "manutencao_preventivas", ["veiculo_id"], name: "index_manutencao_preventivas_on_veiculo_id", using: :btree

  create_table "marcas", force: :cascade do |t|
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "modelos", force: :cascade do |t|
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "marca_id"
  end

  create_table "tipo_veiculos", force: :cascade do |t|
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "nome"
    t.string   "email"
    t.string   "senha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "veiculos", force: :cascade do |t|
    t.integer  "modelo_id"
    t.string   "placa"
    t.string   "renavam"
    t.integer  "cor_veiculo_id"
    t.string   "chassi"
    t.float    "peso"
    t.float    "capacidade_carga"
    t.integer  "tipo_veiculo_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "veiculos", ["cor_veiculo_id"], name: "index_veiculos_on_cor_veiculo_id", using: :btree
  add_index "veiculos", ["modelo_id"], name: "index_veiculos_on_modelo_id", using: :btree
  add_index "veiculos", ["placa"], name: "index_veiculos_on_placa", unique: true, using: :btree
  add_index "veiculos", ["tipo_veiculo_id"], name: "index_veiculos_on_tipo_veiculo_id", using: :btree

  add_foreign_key "condutores", "categoria_cnhs"
  add_foreign_key "manutencao_preventivas", "veiculos"
  add_foreign_key "modelos", "marcas"
  add_foreign_key "veiculos", "cor_veiculos"
  add_foreign_key "veiculos", "modelos"
  add_foreign_key "veiculos", "tipo_veiculos"
end
