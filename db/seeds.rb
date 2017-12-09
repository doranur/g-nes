# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 movie1 = Movie.create(name: "harry potter", published_date: DateTime.now, description:"Deneme Açıklama")
 
 movie2 = Movie.create(name: "kill bill", published_date: DateTime.now, description:"Deneme Açıklama")
 