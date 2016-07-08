# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


concertA = Concert.create(artist: "SchoolBoyQ", venue: "AA", city: "Miami", date: Time.now.midnight + 2.weeks, price: 100, description: "The blank face albulm tour")
concertB = Concert.create(artist: "Anderson.Pak", venue: "BB", city: "Richmond", date: Time.now.midnight + 1.weeks, price: 40, description: "Something like kendrick meets the weekend")
concertC = Concert.create(artist: "Nas", venue: "CC", city: "new York", date: Time.now.midnight + 4.weeks, price: 90, description: "A must see event")
concertD = Concert.create(artist: "J. Cole", venue: "DD", city: "Fayettville", date: Time.now.midnight + 3.weeks, price: 200, description: "2014 forest hills drive")
concertE = Concert.create(artist: "Jay Z", venue: "EE", city: "Compton", date: Time.now.midnight + 4.months, price: 109, description: "Motherfucking sellout...LOL just kidding come out and see him kill shit")