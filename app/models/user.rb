class User < ActiveRecord::Base
  acts_as_authentic do |config|
    config.validate_email_field false
    config.validate_password_field false
  end

  def github_url
    github.present? ? "http://github.com/#{github}" : nil
  end

  def meetup_url
    meetup.present? ? "http://meetup.com/members/#{meetup}" : nil
  end

  def twitter_url
    twitter.present? ? "http://twitter.com/#{twitter}" : nil
  end

end
