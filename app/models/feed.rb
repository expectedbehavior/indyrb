class Feed < ActiveRecord::Base
  
  validates_presence_of   :feed_title
  validates_presence_of   :feed_uri
  validates_uniqueness_of :feed_uri
  
  after_create :get_latest_entry
  
  def self.import
    self.all.map(&:get_latest_entry)
  end
  
  def get_latest_entry
    latest_entry = FeedParser.parse(self.feed_uri).entries.first
    return false unless latest_entry
    
    self.post_title   = latest_entry.title
    self.post_content = latest_entry.summary_detail.value
    self.post_link    = latest_entry.link
    self.save
  end
end
