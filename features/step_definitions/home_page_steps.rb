Then /^I should see the sponsors$/ do
  html_response.should have_tag('h2', "Our Sponsors")

  html_response.should have_tag("div[id=?]", 'sponsors') do
    with_tag("ul") do
      SponsorsHelpers::Sponsors.each do |name, info|
        with_tag("li[class=?]", 'sponsor') do
          with_sponsor(info)
        end
      end
    end
  end
end

Then /^I should see the next meeting$/ do
  html_response.should have_tag("div[id=?]", 'next_meeting') do
    with_tag('h2', "Next Meeting")
    with_tag("h3[class=?]", 'when')
    with_tag("a[class=?]", 'link', 'RSVP @ Meetup.com')
    with_tag("div[class=?]", 'description')
    with_tag("div[class=?]", 'map') do
      with_tag("a") do
        with_tag("img")
      end
    end
  end
end
