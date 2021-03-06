Factory.define(:user) do |u|
  u.sequence(:email) { |n| "email#{n}@example.com" }
  u.sequence(:name) { |n| "John Doe#{n}" }
  u.password "password"
  u.password_confirmation "password"
  u.github { |u|
    u.name
  }
end

Factory.define(:admin, :parent => :user) do |u|
end

Factory.define(:featured_project) do |fp|
  fp.name "Wicked PDF"
  fp.url "http://github.com/mileszs/wicked_pdf"
  fp.description "A PDF generation plugin for Ruby on Rails

Wicked PDF uses the shell utility wkhtmltopdf to serve a PDF file to a user from HTML. In other words, rather than dealing with a PDF generation DSL of some sort, you simply write an HTML view as you would normally, and let Wicked take care of the hard stuff.

Wicked PDF requires Ruby 1.8.7"
  fp.author "Miles Sterrett"
  fp.author_url "http://mileszs.tumblr.com/"
end
