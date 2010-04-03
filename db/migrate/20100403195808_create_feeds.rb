class CreateFeeds < ActiveRecord::Migration
  def self.up
    create_table :feeds do |t|
      t.string   :feed_title
      t.text     :feed_uri
      t.datetime :rss_updated_at
      t.text     :post_title
      t.text     :post_content
      t.text     :post_link
      t.timestamps
    end
  end

  def self.down
    drop_table :feeds
  end
end
