# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.create(first_name: "Shahin", last_name: "Motia")
Student.create(first_name: "Adam", last_name: "Walter")
SchoolClass.create(title: "Rails", room_number: 201)
SchoolClass.create(title: "Sinatra", room_number: 101)
