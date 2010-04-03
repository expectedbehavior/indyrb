class CreateSourceCommits < ActiveRecord::Migration
  def self.up
    create_table :source_commits do |t|
      t.text :url
      t.string :project_name
      t.references :user
      t.text :message
      t.datetime :committed_date

      t.timestamps
    end
  end

  def self.down
    drop_table :source_commits
  end
end
