class RemoveGithubUsers < ActiveRecord::Migration
  def self.up
    drop_table :github_users
  end

  def self.down
    create_table "github_users", :force => true do |t|
      t.string   "name"
      t.datetime "created_at"
      t.datetime "updated_at"
    end
    
  end
end
