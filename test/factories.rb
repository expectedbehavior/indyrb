Factory.define(:user) do |u|
  u.sequence(:email) { |n| "email#{n}@example.com" }
  u.sequence(:name) { |n| "John Doe#{n}" }
  u.password "password"
  u.password_confirmation "password"
end

Factory.define(:github_user) do |u|
  u.sequence(:name) { |n| "githubname#{n}" }
end
