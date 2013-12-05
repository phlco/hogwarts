# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

houses = {
  gryffindor: House.create({ name: 'Gryffindor' }),
  hufflepuff: House.create({ name: 'Hufflepuff' }),
  ravenclaw:  House.create({ name: 'Ravenclaw' }),
  slytherin:  House.create({ name: 'Slytherin' })
}

Student.create({ name: 'Harry Potter',  house: houses[:gryffindor] })
Student.create({ name: 'Pomona Sprout', house: houses[:hufflepuff] })
Student.create({ name: 'Luna Lovegood', house: houses[:ravenclaw] })
Student.create({ name: 'Draco Malfoy',  house: houses[:slytherin] })
