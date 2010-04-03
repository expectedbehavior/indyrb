class RemoveUserIdFromSourceCommits < ActiveRecord::Migration
  def self.up
    remove_column :source_commits, :user_id
  end

  def self.down
    add_column :source_commits, :user_id, :integer
  end
end
