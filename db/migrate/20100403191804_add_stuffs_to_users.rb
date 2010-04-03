class AddStuffsToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :name, :string
    add_column :users, :github, :string
    add_column :users, :twitter, :string
    add_column :users, :meetup, :string
  end

  def self.down
    remove_column :users, :name
  end
end
