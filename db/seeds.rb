# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Sauna.destroy_all

puts "create 1 user"

user1 = User.new(first_name: "Santi", last_name:"Muller", email: "santi@gmail.com", password: "123456")
user1.save!

puts "creating 5 sauna seeds"
sauna1 = Sauna.new(seat: 1, description: "nice and cosy", temperature: "75 degres", user_id: user1.id)
sauna1.save!

sauna2 = Sauna.new(seat: 2, description: "perfect for couple", temperature: "80 degres", user_id: user1.id)
sauna2.save!

sauna3 = Sauna.new(seat: 3, description: "nice river for cooling", temperature: "85 degres", user_id: user1.id)
sauna3.save!

sauna4 = Sauna.new(seat: 5, description: "hot and sweaty", temperature: "90 degres", user_id: user1.id)
sauna4.save!

sauna5 = Sauna.new(seat: 6, description: "familly size", temperature: "95 degres", user_id: user1.id)
sauna5.save!

puts "five sauna created"


