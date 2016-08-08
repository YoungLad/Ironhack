# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# locationA = Location.create!(name: "mary brickell publix", lat: 25.7655928, lng: -80.1981094 )
# locationB = Location.create!(name: "home", lat: 25.7655928, lng: -80.1981094)
# locationC = Location.create!(name: "building", lat: 25.7655928, lng: -80.1981094)

# Activity.create!(title: "hunting", address: "the woods", location_id: locationA.id)
# Activity.create!(title: "running", address: "the park", location_id: locationB.id)
# Activity.create!(title: "party", address: "da club", location_id: locationC.id)
User.create(name: "Lad", email: "young@youguessedit.com", password: "younglad", password_confirmation: "younglad")
User.create(name: "Ant", email: "chillin@likeavillain.com", password: "mentor", password_confirmation: "mentor")

x = 0
def latitude
	rand(24.5..26)
end

def longitude
	(rand(80.1..81)) * -1
end

until x == 150 do
	Location.create!(name: Faker::Address.street_address, lat: latitude, lng: longitude, info: Faker::Hipster.sentence)
	User.create!(name: Faker::Pokemon.name, email: Faker::Internet.email, password: "password" , password_confirmation: "password")
	x +=1
end
