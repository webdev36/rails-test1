# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p 'Creating users'
User.find_or_create_by(name: 'John')
User.find_or_create_by(name: 'Mike')
User.find_or_create_by(name: 'Maria')
User.find_or_create_by(name: 'Rocio')

p 'Creating genres'
genres = %w[Jazz Rock Metal Blues Funk Country World Art\ Punk Alternative\ Rock College\ Rock]
genres.each do |genre|
  Genre.find_or_create_by(name: genre)
end

p 'Creating user_genres'
User.all.each do |user|
  rand(3..5).times.each do |index|
    UserGenre.find_or_create_by(user: user, genre: Genre.find_by(id:rand(0..9)))
  end
end
