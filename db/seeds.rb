# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#
require 'faker'

# Seed database with user

User.destroy_all

total_users = 10

(1..total_users).each do |id|
  user = User.create!(
    # assign ID
    id: id,
    name: Faker::Name,
    email: Faker::Internet.email(domain: "example.com"),
    password: Faker::Internet.password(min_length: 8, max_length: 72, mix_case: true, special_characters: true)) 
end


# Seed database with activities

# total_activites = 10
