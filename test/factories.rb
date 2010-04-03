Factory.define(:user) do |u|
  u.sequence(:email) { |n| "email#{n}@example.com" }
  u.name { "John Doe" }
end

Factory.define(:github_user) do |u|
  u.sequence(:name) { |n| "githubname#{n}" }
end
