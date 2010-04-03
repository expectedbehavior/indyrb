# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

users = [
  { :name => 'Dave Jones',     :github => 'unixmonkey',   :twitter => 'unixmonkey',   :meetup => '4656402', :email => 'unixmonkey1@gmail.com'  },
  { :name => 'Miles Sterrett', :github => 'mileszs',      :twitter => 'mileszs',      :meetup => '7552573', :email => 'miles.sterrett@gmail.com' },
  { :name => 'Matt Gordon',    :github => 'systematic',   :twitter => 'esquivalient', :meetup => '9648110', :email => '' },
  { :name => 'Joel Meador',    :github => 'janxious',     :twitter => 'joelmeador',   :meetup => '767579',  :email => '' },
  { :name => 'Nolan Eakins',   :github => 'sneakin',      :twitter => 'sneakin',      :meetup => '1636703', :email => 'nolan@eakins.net' }
]

users.each do |user|
  User.find_or_create_by_name(:name    => user[:name],
                              :github  => user[:github],
                              :twitter => user[:twitter],
                              :meetup  => user[:meetup],
                              :email   => user[:email])
end
puts "#{User.count} Users Seeded"