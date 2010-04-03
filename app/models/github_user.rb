class GithubUser < ActiveRecord::Base
  has_one :user
  has_many :source_commits
end
