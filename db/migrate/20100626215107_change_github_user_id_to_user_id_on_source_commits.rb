class ChangeGithubUserIdToUserIdOnSourceCommits < ActiveRecord::Migration
  def self.up
    remove_column :source_commits, :github_user_id
    add_column :source_commits, :user_id, :integer
  end

  def self.down
    remove_column :source_commits, :user_id
    add_column :source_commits, :github_user_id, :integer
  end
end
