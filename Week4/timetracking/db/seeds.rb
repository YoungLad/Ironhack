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

TimeEntry.create(hours: 1,  minutes: 9, comments: 'teach the students', date: Time.now, project_id: projectA.id)
TimeEntry.create(hours: 2,  minutes: 8, comments: 'Be a badass', date: Time.now, project_id: projectB.id)
TimeEntry.create(hours: 3,  minutes: 7, comments: 'Buy a pizza shirt', date: Time.now, project_id: projectC.id)
TimeEntry.create(hours: 5,  minutes: 6, comments: 'BZZZZZZZZ', date: Time.now, project_id: projectD.id)
TimeEntry.create(hours: 8,  minutes: 5, comments: 'Throw a beach party', date: Time.now, project_id: projectE.id)
TimeEntry.create(hours: 13, minutes: 4, comments: 'LOL', date: Time.now, project_id: projectF.id)
TimeEntry.create(hours: 21, minutes: 3, comments: 'Marketing!', date: Time.now.midnight - 2.weeks, project_id: projectG.id)
TimeEntry.create(hours: 34, minutes: 2, comments: 'dude like bruh', date: Time.now, project_id: projectH.id)
TimeEntry.create(hours: 55, minutes: 1, comments: 'Hire a sugar baby', date: Time.now, project_id: projectI.id)
TimeEntry.create(hours: 55, minutes: 1, comments: 'cATS!!!', date: Time.now, project_id: projectJ.id)
puts "done"