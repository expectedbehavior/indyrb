class FeaturedProject < ActiveRecord::Base
end

# == Schema Information
#
# Table name: featured_projects
#
#  id          :integer(4)      not null, primary key
#  name        :string(255)
#  url         :string(255)
#  description :text
#  author      :string(255)
#  author_url  :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

