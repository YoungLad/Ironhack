# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Creating three projects"

projectA = Project.create(name: "Ironhack", description: "Coding-bootcamp")
projectB = Project.create(name: "YoungLad", description: "Your-mother's-favorite flavor")
projectC = Project.create(name: "Nizar", description: "Instructor supreme")
projectD = Project.create(name: "Devorrah", description: "Queen Bee")
projectE = Project.create(name: "Andres", description: "Frat-boi")
projectF = Project.create(name: "Nick", description: "LOL")
projectG = Project.create(name: "Grayceli", description: "Marketing!")
projectH = Project.create(name: "JoJo", description: "Wankster")
projectI = Project.create(name: "Weili", description: "This-dude")
projectJ = Project.create(name: "Rachel", description: "MOFO-Unicorn")

puts "done"