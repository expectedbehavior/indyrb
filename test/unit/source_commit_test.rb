require 'test_helper'

class SourceCommitTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: source_commits
#
#  id             :integer(4)      not null, primary key
#  url            :text
#  project_name   :string(255)
#  message        :text
#  committed_date :datetime
#  created_at     :datetime
#  updated_at     :datetime
#  github_id      :string(255)
#  user_id        :integer(4)
#

