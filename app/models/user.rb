class User < ActiveRecord::Base
  acts_as_authentic
  has_many :source_commits
end
