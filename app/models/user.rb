require 'digest/md5'

class User < ActiveRecord::Base
  acts_as_authentic do |config|
    config.validate_email_field false
    config.validate_password_field false
    config.ignore_blank_passwords true
  end

  attr_protected :admin

  def github_url
    github.present? ? "http://github.com/#{github}" : nil
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
