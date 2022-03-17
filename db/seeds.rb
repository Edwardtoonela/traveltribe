require 'date'
current_datetime = DateTime.now
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# DESTROY ALL
puts "Clening DataBase"
Message.destroy_all
Trip.destroy_all
User.destroy_all
Chatroom.destroy_all
puts "..."
puts "Data Base is clean!"

# CREATING NEW
puts "Adding dummy user"
User.create!(full_name: 'Fabio', email: "fabio@gmail.com", password: '123456', user_name: 'Fabio')
User.create!(full_name: 'Bart Simpson', email: "homer@gmail.com", password: '123456', user_name: 'Bart')
puts "..."
puts "Adding dummy trip and chatroom"
amsterdam = Trip.create!(name: "Chill trip to Amsterdam", start_date: '05-07-2022', end_date: "05-22-2022", description: 'Best trip ever i can not belivev asdkfnskd fksdnf', location: 'Madafuckinggaskar', max_guests: "7", price_min: "500", price_max: "700", user: User.first)
Chatroom.create!(name: amsterdam.name)

india = Trip.create!(name: "India awaits", start_date: '07-11-2022', end_date: "07-12-2022", description: 'Well this is going to be a big one. We are going to India for a month I can not believe it. You have to see this with your own eyes.', location: 'India', max_guests: "4", price_min: "1500", price_max: "1900", user: User.first)
Chatroom.create!(name: india.name)

nz = Trip.create!(name: "Queenstown, NZ", start_date: '09-05-2022', end_date: "10-06-2022", description: 'The coolest trip you one can do. We are going to Queenstown for a month I can not believe it. You have to see this with your own eyes.', location: 'New Zealand', max_guests: "6", price_min: "2500", price_max: "3500", user: User.first)
Chatroom.create!(name: nz.name)
puts "..."
puts "Adding dummy ratings"
puts "..."
Review.create!(comment: "Unbelivebly good. I will recommend this to everyone", rating: '5', user: User.first, trip: Trip.first)
Review.create!(comment: "Pretty Good. Very satisfied with it.", rating: '4', user: User.first, trip: Trip.last)
Review.create!(comment: "Poor. I cant recommend this to anyone", rating: '2', user: User.first, trip: Trip.second)
Review.create!(comment: "Horrible. I cant recommend this to anyone", rating: '1', user: User.first, trip: Trip.second)
Review.create!(comment: "Avarage. Now sure if I can recommend this to anybody", rating: '3', user: User.first, trip: Trip.first)
Review.create!(comment: "Horrible. I cant recommend this to anyone", rating: '2', user: User.first, trip: Trip.last)
puts "Finished"
