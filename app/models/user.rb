class User < ActiveRecord::Base
  has_many :source_commits

  acts_as_authentic do |config|
    config.validate_email_field false
    config.validate_password_field false
  end
end
