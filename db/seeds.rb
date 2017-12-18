# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.destroy_all

student1 = Student.create(first_name: "Kelly", last_name: "Sample")

student2 = Student.create(first_name: "Yamuna", last_name: "Navada")

student3 = Student.create(first_name: "Eric", last_name: "Lum")
