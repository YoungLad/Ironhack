# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

locationA = Location.create!(name: "mary brickell publix", lat: 25.7655928, lng: -80.1981094 )
locationB = Location.create!(name: "home", lat: 25.7655928, lng: -80.1981094)
locationC = Location.create!(name: "building", lat: 25.7655928, lng: -80.1981094)

Activity.create!(title: "hunting", address: "the woods", price: 23, location_id: locationA.id)
Activity.create!(title: "running", address: "the park", price: 0, location_id: locationB.id)
Activity.create!(title: "party", address: "da club", price: 30, location_id: locationC.id)