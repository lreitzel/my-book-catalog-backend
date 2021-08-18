# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

12.times do
    Genre.create(name: Faker::Book.unique.genre)
end

20.times do
    gen_id = rand(1..12)
    Book.create(title: Faker::Book.title, author: Faker::Book.author, read: true, genre_id: gen_id)
end

