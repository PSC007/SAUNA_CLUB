# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
User.destroy_all
Sauna.destroy_all

puts "create 1 user"

user1 = User.new(first_name: "Santi", last_name:"Muller", email: "santi@gmail.com", password: "123456")
user1.save!

puts "creating 5 sauna seeds"
sauna1 = Sauna.new(name: "Beautiful sauna with garden view",
                   seat: 1,
                   description: "nice and cosy",
                   temperature: "75",
                   user: user1,
                   address: "hermanstrasse, 50 Berlin")
sauna1.save!
# file = URI.open('https://media-exp1.licdn.com/dms/image/C4D03AQH-3X4Qx0gq_w/profile-displayphoto-shrink_200_200/0?e=1585785600&v=beta&t=FOE9E-1DHa-cCwMA5RsMFXQWBiKR_7gLYj8br9Kwa4o')
# sauna1.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

sauna2 = Sauna.new(name: "Romantic sauna for two",
                   seat: 2,
                   description: "perfect for couple",
                   temperature: "80",
                   user: user1,
                   address: "wiener str 34 Berlin")
sauna2.save!

sauna3 = Sauna.new(name: "Outdoor sauna next to river",
                   seat: 3,
                   description: "nice river for cooling",
                   temperature: "85",
                   user: user1,
                   address: "rosa luxemburg platz Berlin")
sauna3.save!

sauna4 = Sauna.new(name: "Porno sauna",
                   seat: 5,
                   description: "hot and sweaty",
                   temperature: "90",
                   user: user1,
                   address: "humboldthain park Berlin")
sauna4.save!

sauna5 = Sauna.new(name: "Huge sauna for family gatherings",
                   seat: 6,
                   description: "familly size",
                   temperature: "95",
                   user: user1,
                   address: "altonaer str Berlin")
sauna5.save!

puts "five sauna created"


