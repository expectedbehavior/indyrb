class Sponsor < ActiveRecord::Base
  has_attached_file :logo, :styles => { :icon => '32x32>', :small => '100x100>' }
end
