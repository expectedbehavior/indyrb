Bootstrapper.for :development do |b|
  Factory.create(:featured_project)
end

Bootstrapper.for :production do |b|
end

Bootstrapper.for :test do |b|
  b.truncate_tables :all
end

# Bootstrapper.for :seed_users do |b|
#   { 
  
  
#   }
# end 
