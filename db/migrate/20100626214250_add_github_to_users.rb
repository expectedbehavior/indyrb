class AddGithubToUsers < ActiveRecord::Migration
  def self.up
    # Sticking with the naming scheme...
    add_column :users, :github, :string
  end

  def self.down
    remove_column :users, :github
  end
end
