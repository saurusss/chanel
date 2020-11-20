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

ActiveRecord::Schema.define(version: 2020_11_20_015527) do

  create_table "assetlists", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "mgmtno"
    t.bigint "store_id"
    t.string "username"
    t.string "devicetype"
    t.string "purpose"
    t.string "manufacturer"
    t.string "modelno"
    t.string "serialno"
    t.string "spec"
    t.string "ramsize"
    t.string "disksize"
    t.string "os"
    t.string "hostname"
    t.string "ipaddr"
    t.string "gwaddr"
    t.string "macwire"
    t.string "macwireless"
    t.date "date_purchase"
    t.date "date_produce"
    t.integer "amt_buy"
    t.text "remarks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "location"
    t.string "adac"
    t.string "postno"
    t.string "ispcompany"
    t.string "ispmgmtno"
    t.string "dimension"
    t.index ["store_id"], name: "index_assetlists_on_store_id"
  end

  create_table "comments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "comment"
    t.bigint "user_id"
    t.bigint "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_comments_on_post_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "contacts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dslists", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "Index_no"
    t.string "g_no"
    t.string "g_year"
    t.string "name"
    t.string "company"
    t.string "company_part"
    t.string "company_title"
    t.string "company_address"
    t.string "company_tel"
    t.string "home_address"
    t.string "home_tel"
    t.string "mobile"
    t.string "confirm"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dtypes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "dtype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "priority"
  end

  create_table "examples", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "c1"
    t.string "c2"
    t.string "c3"
    t.string "c4"
    t.string "c5"
    t.string "c6"
    t.string "c7"
    t.string "c8"
    t.string "c9"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "isps", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "store_id"
    t.string "telcom"
    t.string "lineinfo"
    t.date "date_open"
    t.string "term"
    t.string "bandwidth"
    t.string "purpose"
    t.string "placetoinstall"
    t.text "remarks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["store_id"], name: "index_isps_on_store_id"
  end

  create_table "itaqntesmts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "store_id"
    t.bigint "dtype_id"
    t.integer "qntesmt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dtype_id"], name: "index_itaqntesmts_on_dtype_id"
    t.index ["store_id"], name: "index_itaqntesmts_on_store_id"
  end

  create_table "itassets", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "mgmtno"
    t.bigint "store_id"
    t.string "username"
    t.string "location"
    t.string "devicetype"
    t.string "purpose"
    t.string "manufacturer"
    t.string "modelno"
    t.string "serialno"
    t.string "spec"
    t.string "ramsize"
    t.string "disksize"
    t.string "os"
    t.string "hostname"
    t.string "ipaddr"
    t.string "gwaddr"
    t.string "macwire"
    t.string "macwireless"
    t.date "date_purchase"
    t.date "date_produce"
    t.integer "amtpurchase"
    t.text "remarks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "dtype_id"
    t.string "adac"
    t.string "postno"
    t.string "ispcompany"
    t.string "ispmgmtno"
    t.string "dimension"
    t.index ["dtype_id"], name: "index_itassets_on_dtype_id"
    t.index ["store_id"], name: "index_itassets_on_store_id"
  end

  create_table "posts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "stores", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "group"
    t.string "storecode"
    t.string "store_ab"
    t.string "storename"
    t.string "extension"
    t.text "address"
    t.string "telno"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "assetlists", "stores"
  add_foreign_key "comments", "posts"
  add_foreign_key "comments", "users"
  add_foreign_key "isps", "stores"
  add_foreign_key "itaqntesmts", "dtypes"
  add_foreign_key "itaqntesmts", "stores"
  add_foreign_key "itassets", "dtypes"
  add_foreign_key "itassets", "stores"
  add_foreign_key "posts", "users"
end
