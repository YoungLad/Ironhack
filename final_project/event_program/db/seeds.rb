# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
event1 = Activity.create(title: "hunting", location: "the woods", price: 23)
event2 = Activity.create(title: "running", location: "the park", price: 0)
event3 = Activity.create(title: "party", location: "da club", price: 30)
location2 = Location.create(name: "mary brickell publix", lat:25.7655928, lng: -80.1981094 )
location1 = Location.create(name: "home", lat: 25.7655928, lng: -80.1981094)
location3 = Location.create(name: "building", lat: 25.7655928, lng: -80.1981094)