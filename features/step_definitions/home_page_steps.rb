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
  pending
  within("#next_meeting") do |content|
    content.should contain("Next Meeting")
    content.should have_tag("h3[class=?]", 'when')
    content.should have_tag("a[class=?]", 'link', 'RSVP @ Meetup.com')
    content.should have_tag("div[class=?]", 'description')
  end
end
