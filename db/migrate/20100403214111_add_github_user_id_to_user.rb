class AddGithubUserIdToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :github_user_id, :integer
  end

  def self.down
    remove_column :users, :github_user_id
  end
end
