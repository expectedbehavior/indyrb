class CreateFeaturedProjects < ActiveRecord::Migration
  def self.up
    create_table :featured_projects do |t|
      t.string :name
      t.string :url
      t.text :description
      t.string :author
      t.string :author_url

      t.timestamps
    end
  end

  def self.down
    drop_table :featured_projects
  end
end
