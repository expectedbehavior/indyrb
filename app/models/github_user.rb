class GithubUser < ActiveRecord::Base
  has_one :user
  
  def github_api_user
    GitHub::API.user(self.name)
  end

  def method_missing(method)
    if github_api_user.respond_to? method
      github_api_user.send method
    else
      super
    end
  end
end
