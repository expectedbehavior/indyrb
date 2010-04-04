Given /^an admin$/ do
  @user = User.create!(:email => "admin@example.com",
                       :password => 'secret')
end
