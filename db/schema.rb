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

ActiveRecord::Schema.define(version: 20160918010000) do

  create_table "docomo_tokens", force: :cascade do |t|
    t.string   "token",      null: false
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["token"], name: "index_docomo_tokens_on_token", unique: true
    t.index ["user_id"], name: "index_docomo_tokens_on_user_id", unique: true
  end

  create_table "user_mobile_devices", force: :cascade do |t|
    t.integer  "user_id",      null: false
    t.string   "device_token", null: false
    t.string   "device_type",  null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["user_id"], name: "index_user_mobile_devices_on_user_id"
  end

  create_table "user_providers", force: :cascade do |t|
    t.integer  "user_id",       null: false
    t.string   "access_token",  null: false
    t.string   "provider_name", null: false
    t.string   "uid",           null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["access_token", "provider_name"], name: "index_user_providers_on_access_token_and_provider_name"
    t.index ["user_id", "provider_name"], name: "index_user_providers_on_user_id_and_provider_name", unique: true
    t.index ["user_id"], name: "index_user_providers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "encrypted_password",                 null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "access_token"
    t.string   "screen_name"
    t.string   "image_url"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "video_comments", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.integer  "video_id",   null: false
    t.text     "contents",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "video_id", "created_at"], name: "index_video_comments_on_user_id_and_video_id_and_created_at"
    t.index ["user_id"], name: "index_video_comments_on_user_id"
    t.index ["video_id", "user_id", "created_at"], name: "index_video_comments_on_video_id_and_user_id_and_created_at"
    t.index ["video_id"], name: "index_video_comments_on_video_id"
  end

  create_table "videos", force: :cascade do |t|
    t.integer  "user_id",                   null: false
    t.string   "video_uid",                 null: false
    t.string   "image_uid",                 null: false
    t.string   "swapped_uid"
    t.string   "thumbnail_uid"
    t.string   "program_name"
    t.integer  "view_count",    default: 0, null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["created_at"], name: "index_videos_on_created_at"
    t.index ["image_uid"], name: "index_videos_on_image_uid"
    t.index ["swapped_uid"], name: "index_videos_on_swapped_uid", unique: true
    t.index ["thumbnail_uid"], name: "index_videos_on_thumbnail_uid", unique: true
    t.index ["user_id"], name: "index_videos_on_user_id"
    t.index ["video_uid"], name: "index_videos_on_video_uid"
  end

end
