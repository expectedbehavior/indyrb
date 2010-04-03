class AddGithubUserIdToSourceCommits < ActiveRecord::Migration
  def self.up
    add_column :source_commits, :github_user_id, :integer
  end

  def self.down
    remove_column :source_commits, :github_user_id
  end
end
