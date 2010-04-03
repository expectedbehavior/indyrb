class SourceCommit < ActiveRecord::Base
  belongs_to :github_user

  def self.fetch_commits
    GithubUser.all.each do |github_user|
      api_user = GitHub::API.user(github_user.name)
      api_user.repositories.each do |repository|
        repository.commits.each do |commit|
          unless SourceCommit.find_by_github_id(commit.id)
            github_user.source_commits.create(:url => commit.url,
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
