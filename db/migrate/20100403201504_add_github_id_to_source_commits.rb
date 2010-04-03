class AddGithubIdToSourceCommits < ActiveRecord::Migration
  def self.up
    add_column :source_commits, :github_id, :string
  end

  def self.down
    remove_column :source_commits, :github_id
  end
end
