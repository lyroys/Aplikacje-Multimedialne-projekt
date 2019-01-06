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

ActiveRecord::Schema.define(version: 20190106142650) do

  create_table "1MiejscaP", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "NR", null: false
    t.integer "ID_WAGUNU", null: false
    t.string "STATUS", limit: 6, null: false
    t.string "TYP", limit: 33, null: false
    t.string "RODZAJ", limit: 26, null: false
  end

  create_table "1RozkładP", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "ID", null: false
    t.date "DATA", null: false
    t.time "GODZINA", null: false
    t.integer "ID_POCIĄGU", null: false
    t.integer "ID_TRASY", null: false
  end

  create_table "1WagonP", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "ID_SKŁADU", null: false
    t.integer "Nr", null: false
    t.integer "L_MIEJSC", null: false
    t.integer "L_WOLNYCH", null: false
    t.integer "L_ZAJETYCH", null: false
    t.index ["ID_SKŁADU"], name: "ID_SKŁADU"
  end

  create_table "PociągP", primary_key: "ID", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "ID_TRASY", null: false
    t.index ["ID_TRASY"], name: "ID_TRASY"
  end

  create_table "TrasyP", primary_key: "Nr", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "SKĄD", limit: 20, null: false
    t.string "DOKĄD", limit: 20, null: false
    t.integer "ODLEGŁOŚĆ", null: false
  end

  create_table "posts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin2" do |t|
    t.string "name"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "index"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tests", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "name", null: false
  end

  create_table "trains", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "nazwa"
    t.string "model"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "1WagonP", "PociągP", column: "ID_SKŁADU", primary_key: "ID", name: "1WagonP_ibfk_1"
  add_foreign_key "PociągP", "TrasyP", column: "ID_TRASY", primary_key: "Nr", name: "PociągP_ibfk_1"
end
