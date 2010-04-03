class SourceCommit < ActiveRecord::Base
  belongs_to :user

  def self.fetch_commits
    User.all.each do |user|
      github_user = GitHub::API.user(user.github)
      github_user.repositories.each do |repository|
        repository.commits.each do |commit|
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
