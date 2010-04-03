class GithubUser < ActiveRecord::Base
  has_one :user
  delegate :repositories, :to => :github_api_user
  
  def github_api_user
    GitHub::API.user(read_attribute("name"))
  end
end
