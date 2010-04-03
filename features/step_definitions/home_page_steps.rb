Then /^I should see the sponsors$/ do
  pending

  within("#sponsors") do |content|
    SponsorsHelpers::Sponsors.each do |name, desc|
      within('.sponsor') do |sponsor_content|
        sponsor_content.should contain(name)
        sponsor_content.should contain(desc)
      end
    end
  end
end

Then /^I should see the next meeting$/ do
  within("#nextmeeting") do |content|
    content.should contain("Upcoming")
  end
end
