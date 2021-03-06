class Feed < ActiveRecord::Base
  
  validates_presence_of   :feed_title
  validates_presence_of   :feed_uri
  validates_uniqueness_of :feed_uri
  
  after_create :get_latest_entry
  
  def self.import
    self.all.map(&:get_latest_entry)
  end
  
  def get_latest_entry
    latest_entry = FeedNormalizer::FeedNormalizer.parse(open(self.feed_uri)).entries.first
    #FeedParser.parse(self.feed_uri).entries.first
    return false unless latest_entry
    
    
    self.post_title   = latest_entry.title
#    self.post_content = latest_entry.summary_detail.value
    self.post_content = latest_entry.content
#    self.post_link    = latest_entry.link
    self.post_link    = latest_entry.url
    self.save
  end
end

# == Schema Information
#
# Table name: feeds
#
#  id             :integer(4)      not null, primary key
#  feed_title     :string(255)
#  feed_uri       :text
#  rss_updated_at :datetime
#  post_title     :text
#  post_content   :text
#  post_link      :text
#  created_at     :datetime
#  updated_at     :datetime
#

