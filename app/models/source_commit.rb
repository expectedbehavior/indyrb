class SourceCommit < ActiveRecord::Base
  belongs_to :user

  def self.fetch_commits
    User.all.each do |user|
      api_user = GitHub::API.user(user.github)
      api_user.repositories.each do |repository|
        repository.commits.each do |commit|
          unless SourceCommit.find_by_github_id(commit.id)
            user.source_commits.create(:url => commit.url,
                                       :project_name => repository.name,
                                       :message => commit.message,
                                       :committed_date => commit.committed_date,
                                       :github_id => commit.id)
          end
        end
      end
    end
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

