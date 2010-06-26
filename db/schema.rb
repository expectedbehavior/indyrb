# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

<<<<<<< HEAD
ActiveRecord::Schema.define(:version => 20100404004852) do
=======
ActiveRecord::Schema.define(:version => 20100626215107) do
>>>>>>> 638c61af16d2b4bf7caa4dc279ced96d7f239aae

  create_table "featured_projects", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.text     "description"
    t.string   "author"
    t.string   "author_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feeds", :force => true do |t|
    t.string   "feed_title"
    t.text     "feed_uri"
    t.datetime "rss_updated_at"
    t.text     "post_title"
    t.text     "post_content"
    t.text     "post_link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "source_commits", :force => true do |t|
    t.text     "url"
    t.string   "project_name"
    t.text     "message"
    t.datetime "committed_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "github_id"
    t.integer  "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "twitter"
    t.string   "meetup"
    t.boolean  "admin"
    t.string   "github"
  end

end
