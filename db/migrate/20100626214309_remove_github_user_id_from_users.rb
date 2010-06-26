class RemoveGithubUserIdFromUsers < ActiveRecord::Migration
  def self.up
    remove_column :users, :github_user_id
  end

  def self.down
    add_column :users, :github_user_id, :integer
  end
end
