# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#
require 'faker'

5.times do
  # why am I using user.create instead of user.new then user.save? 
  user = User.new(
    name: Faker::Name,
    email: Faker::Internet.email(domain: "example.com")
  )
  user.save
end

