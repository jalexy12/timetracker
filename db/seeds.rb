# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

project1 = Project.create({name: "Ironhack", description: "Description"})
project2 = Project.create({name: "Computer", description: "Description"}) 
project3 = Project.create({name: "Hello", description: "Hidescription"})
project4 = Project.create({name: "Nodescriptionwtf"})
project5 = Project.create({name: "Hey", description: "Description"})
project6 = Project.create({name: "Sweet Project", description: "Description"}) 
project7 = Project.create({name: "Hi", description: "Hidescription"})
project8 = Project.create({name: "Nodescriptionwtf"})

project1.entries.create({hours: 0, minutes: 4, comments: "ahsdbfds", date: Date.current})
project1.entries.create({hours: 1, minutes: 2, comments: "asd", date: Date.current})
project2.entries.create({hours: 3, minutes: 2, comments: "hohihih", date: Date.current})
project5.entries.create({hours: 0, minutes: 5, comments: "ringnhngihand", date: Date.current})
project4.entries.create({hours: 6, minutes: 9, comments: "hihihih", date: Date.current})
project3.entries.create({hours: 0, minutes: 25, comments: "asdfsdfasd", date: Date.current})
project7.entries.create({hours: 2, minutes: 45, comments: "rhashfj", date: Date.current})
