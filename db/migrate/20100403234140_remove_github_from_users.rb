class RemoveGithubFromUsers < ActiveRecord::Migration
  def self.up
    remove_column :users, :github
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end
