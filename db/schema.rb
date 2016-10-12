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

ActiveRecord::Schema.define(version: 20160810212040) do

  create_table "list_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id",    null: false
    t.integer  "list_id",    null: false
    t.integer  "role_id",    null: false
    t.integer  "position",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_list_users_on_role_id", using: :btree
    t.index ["user_id", "list_id"], name: "index_list_users_on_user_id_and_list_id", using: :btree
  end

  create_table "lists", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",       null: false
    t.integer  "server_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["server_id"], name: "index_lists_on_server_id", using: :btree
  end

  create_table "mobs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "Sprite",                            null: false
    t.string  "kName",                             null: false
    t.string  "iName",                             null: false
    t.integer "LV",          limit: 1, default: 0, null: false
    t.integer "HP",          limit: 3, default: 0, null: false
    t.integer "SP",          limit: 3, default: 0, null: false
    t.integer "EXP",         limit: 3, default: 0, null: false
    t.integer "JEXP",        limit: 3, default: 0, null: false
    t.integer "Range1",      limit: 1, default: 0, null: false
    t.integer "ATK1",        limit: 2, default: 0, null: false
    t.integer "ATK2",        limit: 2, default: 0, null: false
    t.integer "DEF",         limit: 2, default: 0, null: false
    t.integer "MDEF",        limit: 2, default: 0, null: false
    t.integer "STR",         limit: 2, default: 0, null: false
    t.integer "AGI",         limit: 2, default: 0, null: false
    t.integer "VIT",         limit: 2, default: 0, null: false
    t.integer "INT",         limit: 2, default: 0, null: false
    t.integer "DEX",         limit: 2, default: 0, null: false
    t.integer "LUK",         limit: 2, default: 0, null: false
    t.integer "Range2",      limit: 1, default: 0, null: false
    t.integer "Range3",      limit: 1, default: 0, null: false
    t.integer "Scale",       limit: 1, default: 0, null: false
    t.integer "Race",        limit: 1, default: 0, null: false
    t.integer "Element",     limit: 1, default: 0, null: false
    t.integer "Mode",                  default: 0, null: false
    t.integer "Speed",       limit: 2, default: 0, null: false
    t.integer "aDelay",      limit: 2, default: 0, null: false
    t.integer "aMotion",     limit: 2, default: 0, null: false
    t.integer "dMotion",     limit: 2, default: 0, null: false
    t.integer "MEXP",        limit: 3, default: 0, null: false
    t.integer "MVP1id",      limit: 2, default: 0, null: false
    t.integer "MVP1per",     limit: 3, default: 0, null: false
    t.integer "MVP2id",      limit: 2, default: 0, null: false
    t.integer "MVP2per",     limit: 3, default: 0, null: false
    t.integer "MVP3id",      limit: 2, default: 0, null: false
    t.integer "MVP3per",     limit: 3, default: 0, null: false
    t.integer "Drop1id",     limit: 2, default: 0, null: false
    t.integer "Drop1per",    limit: 3, default: 0, null: false
    t.integer "Drop2id",     limit: 2, default: 0, null: false
    t.integer "Drop2per",    limit: 3, default: 0, null: false
    t.integer "Drop3id",     limit: 2, default: 0, null: false
    t.integer "Drop3per",    limit: 3, default: 0, null: false
    t.integer "Drop4id",     limit: 2, default: 0, null: false
    t.integer "Drop4per",    limit: 3, default: 0, null: false
    t.integer "Drop5id",     limit: 2, default: 0, null: false
    t.integer "Drop5per",    limit: 3, default: 0, null: false
    t.integer "Drop6id",     limit: 2, default: 0, null: false
    t.integer "Drop6per",    limit: 3, default: 0, null: false
    t.integer "Drop7id",     limit: 2, default: 0, null: false
    t.integer "Drop7per",    limit: 3, default: 0, null: false
    t.integer "Drop8id",     limit: 2, default: 0, null: false
    t.integer "Drop8per",    limit: 3, default: 0, null: false
    t.integer "Drop9id",     limit: 2, default: 0, null: false
    t.integer "Drop9per",    limit: 3, default: 0, null: false
    t.integer "DropCardid",  limit: 2, default: 0, null: false
    t.integer "DropCardper", limit: 3, default: 0, null: false
  end

  create_table "permission_roles", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "role_id",       null: false
    t.integer  "permission_id", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["role_id", "permission_id"], name: "index_permission_roles_on_role_id_and_permission_id", using: :btree
  end

  create_table "permissions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",        null: false
    t.string   "description", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "roles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",       null: false
    t.integer  "position",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "servers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",       null: false
    t.boolean  "official",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spawns", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "list_id",                          null: false
    t.integer  "mob_id",                           null: false
    t.boolean  "renewal",           default: true, null: false
    t.integer  "respawn_time",                     null: false
    t.integer  "last_kill_time"
    t.integer  "killed_by_user_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.index ["killed_by_user_id"], name: "index_spawns_on_killed_by_user_id", using: :btree
    t.index ["list_id"], name: "index_spawns_on_list_id", using: :btree
    t.index ["mob_id"], name: "index_spawns_on_mob_id", using: :btree
  end

  create_table "users", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "fb_name",                             null: false
    t.string   "fb_user",                             null: false
    t.string   "fb_email",                            null: false
    t.string   "fb_token"
    t.integer  "gmt",        limit: 2,                null: false
    t.boolean  "active",               default: true
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

end
