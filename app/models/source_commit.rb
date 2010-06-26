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
