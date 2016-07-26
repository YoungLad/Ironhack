# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

event1 = Event.create(title: "hunting", distance: 12, location: "the woods", price: 23)
event2 = Event.create(title: "running", distance: 15, location: "the park", price: 0)
event3 = Event.create(title: "party", distance: 10, location: "da club", price: 30)
