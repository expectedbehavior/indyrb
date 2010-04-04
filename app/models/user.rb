require 'digest/md5'

class User < ActiveRecord::Base
  belongs_to :github_user

  acts_as_authentic

  attr_protected :admin

  def github_url
    github_user.try(:name).present? ? "http://github.com/#{github_user.name}" : nil
  end

  def meetup_url
    meetup.present? ? "http://meetup.com/members/#{meetup}" : nil
  end

  def twitter_url
    twitter.present? ? "http://twitter.com/#{twitter}" : nil
  end

  def gravatar_url
    email.present? ? "http://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(email.downcase)}" : nil
  end

end
