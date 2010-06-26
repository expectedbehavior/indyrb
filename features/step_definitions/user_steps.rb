Given /^I am logged in as that user$/ do
  
end

# more vars because we want this to be higher precedence
Given /^there is (a|an) (admin) (named) "([^\"]*)"$/ do |x, y, z, name|
  klass = "user"
  var_name = klass.downcase.gsub(/\s/,'_')
  instance_variable_set "@recent_#{var_name}", Factory.create(:admin, :name => name, :login => name)
end

Given /^I am logged in$/ do
  When %Q{I view the login page}
  And %Q{I fill in "Email" with "#{@recent_user.email}"}
  And %Q{I fill in "Password" with "password"}
  When %Q{I press "Submit"}
  Then %Q(I should see "Login successful!")
end

Given /^the users github username is "([^\"]*)"$/ do |github_username|
  @recent_user.update_attributes(:github => github_username)  
end
