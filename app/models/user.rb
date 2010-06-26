require 'digest/md5'

class User < ActiveRecord::Base
  acts_as_authentic

  attr_protected :admin

  def github_url
    if github.present? 
      "http://github.com/#{github}"
    end.to_s
  end

  def meetup_url
    if meetup.present? 
      "http://meetup.com/members/#{meetup}"
    end.to_s
  end

  def twitter_url
    if twitter.present? 
      "http://twitter.com/#{twitter}"
    end.to_s
  end

  def gravatar_url
    if email.present? 
      "http://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(email.downcase)}"
    end.to_s
  end
  
end

# == Schema Information
#
# Table name: users
#
#  id                :integer(4)      not null, primary key
#  email             :string(255)
#  crypted_password  :string(255)
#  password_salt     :string(255)
#  persistence_token :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#  name              :string(255)
#  twitter           :string(255)
#  meetup            :string(255)
#  admin             :boolean(1)
#  github            :string(255)
#

