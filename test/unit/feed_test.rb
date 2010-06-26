require 'test_helper'

class FeedTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
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

