# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "Cleaning DB..."
User.destroy_all
Sauna.destroy_all

puts "Seeding 12 users..."

user1 = User.new(first_name: "Valerie", last_name:"Muller", email: "valerie@gmail.com", password: "123456")
user1.save!
file = URI.open('https://res.cloudinary.com/marcel-feindt/image/upload/v1614254797/sauna%20seeds/Valerie_y7am5p.png')
user1.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user2 = User.new(first_name: "Simone", last_name:"Muller", email: "simone@gmail.com", password: "123456")
user2.save!
file = URI.open('https://res.cloudinary.com/marcel-feindt/image/upload/v1614254793/sauna%20seeds/Simone_z9qsvd.jpg')
user2.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user3 = User.new(first_name: "Sarah", last_name:"Muller", email: "sarah@gmail.com", password: "123456")
user3.save!
file = URI.open('https://res.cloudinary.com/marcel-feindt/image/upload/v1614254792/sauna%20seeds/Sarah_rtm5ce.jpg')
user3.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user4 = User.new(first_name: "Edward", last_name:"Muller", email: "edward@gmail.com", password: "123456")
user4.save!
file = URI.open('https://res.cloudinary.com/marcel-feindt/image/upload/v1614254792/sauna%20seeds/Edward_qjslee.jpg')
user4.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user5 = User.new(first_name: "Gergely", last_name:"Muller", email: "gergely@gmail.com", password: "123456")
user5.save!
file = URI.open('https://res.cloudinary.com/marcel-feindt/image/upload/v1614254792/sauna%20seeds/Gergely_mn0r4u.jpg')
user5.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user6 = User.new(first_name: "Margaux", last_name:"Muller", email: "Margaux@gmail.com", password: "123456")
user6.save!
file = URI.open('https://res.cloudinary.com/marcel-feindt/image/upload/v1614254792/sauna%20seeds/Marguax_zebupx.jpg')
user6.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user7 = User.new(first_name: "Hannah", last_name:"Muller", email: "Hannah@gmail.com", password: "123456")
user7.save!
file = URI.open('https://res.cloudinary.com/marcel-feindt/image/upload/v1614254792/sauna%20seeds/Hannah_pr2erp.jpg')
user7.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user8 = User.new(first_name: "Fernando", last_name:"Muller", email: "Fernando@gmail.com", password: "123456")
user8.save!
file = URI.open('https://res.cloudinary.com/marcel-feindt/image/upload/v1614254792/sauna%20seeds/Fernando_gjurai.jpg')
user8.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user9 = User.new(first_name: "Jonathan", last_name:"Muller", email: "Jonathan@gmail.com", password: "123456")
user9.save!
file = URI.open('https://res.cloudinary.com/marcel-feindt/image/upload/v1614254792/sauna%20seeds/Jonathan_llx2zr.jpg')
user9.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user10 = User.new(first_name: "Leon", last_name:"Muller", email: "Leon@gmail.com", password: "123456")
user10.save!
file = URI.open('https://res.cloudinary.com/marcel-feindt/image/upload/v1614254792/sauna%20seeds/Leon_lswog8.jpg')
user10.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user11 = User.new(first_name: "Dara", last_name:"Muller", email: "Dara@gmail.com", password: "123456")
user11.save!
file = URI.open('https://res.cloudinary.com/marcel-feindt/image/upload/v1614254792/sauna%20seeds/Dara_lqy7cb.jpg')
user11.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user12 = User.new(first_name: "Alty", last_name:"Muller", email: "Alty@gmail.com", password: "123456")
user12.save!
file = URI.open('https://res.cloudinary.com/marcel-feindt/image/upload/v1614254791/sauna%20seeds/Alty_ohvn9h.jpg')
user12.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "Seeding 12 saunas..."
sauna1 = Sauna.new(name: "Super Cozy Sauna",
                   seat: 1,
                   description: "Next to a lake for cooling down.",
                   temperature: "75",
                   user: user1,
                   address: "Ellricher str. Berlin")
sauna1.save!
file = URI.open('https://res.cloudinary.com/marcel-feindt/image/upload/v1614245500/sauna%20seeds/sauna_1_yrhsaq.jpg')
sauna1.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

sauna2 = Sauna.new(name: "Romantic Sauna",
                   seat: 2,
                   description: "Perfect for couple.",
                   temperature: "80",
                   user: user2,
                   address: "wiener str 34 Berlin")
sauna2.save!
file = URI.open('https://res.cloudinary.com/marcel-feindt/image/upload/v1614245499/sauna%20seeds/sauna_20_xdb0ma.jpg')
sauna2.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

sauna3 = Sauna.new(name: "Mountain Sauna",
                   seat: 3,
                   description: "Nice river for cooling.",
                   temperature: "85",
                   user: user3,
                   address: "rosa luxemburg platz Berlin")
sauna3.save!
file = URI.open('https://res.cloudinary.com/marcel-feindt/image/upload/v1614245495/sauna%20seeds/sauna_2_dfn2u8.jpg')
sauna3.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

sauna4 = Sauna.new(name: "Winter Oasis",
                   seat: 5,
                   description: "Hot and sweaty.",
                   temperature: "90",
                   user: user4,
                   address: "humboldthain park Berlin")
sauna4.save!
file = URI.open('https://res.cloudinary.com/marcel-feindt/image/upload/v1614245475/sauna%20seeds/sauna_5_sce7ym.jpg')
sauna4.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

sauna5 = Sauna.new(name: "Warm Sensation",
                   seat: 3,
                   description: "You will forget all your problems.",
                   temperature: "70",
                   user: user5,
                   address: "Brandenburgische Straße 66 Berlin")
sauna5.save!
file = URI.open('https://res.cloudinary.com/marcel-feindt/image/upload/v1614245495/sauna%20seeds/sauna_6_trsj9x.jpg')
sauna5.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

sauna6 = Sauna.new(name: "Familly Sauna",
                   seat: 8,
                   description: "Great time for kids and parents.",
                   temperature: "80",
                   user: user6,
                   address: "Leopoldstraße 17 Berlin")
sauna6.save!
file = URI.open('https://res.cloudinary.com/marcel-feindt/image/upload/v1614245494/sauna%20seeds/sauna_19_flgsdz.jpg')
sauna6.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

sauna7 = Sauna.new(name: "Finnish Sauna",
                   seat: 4,
                   description: "Enjoy our home made sauna.",
                   temperature: "110",
                   user: user7,
                   address: "Genslerstraße 93 Berlin")
sauna7.save!
file = URI.open('https://res.cloudinary.com/marcel-feindt/image/upload/v1614245494/sauna%20seeds/sauna_18_ziu6rx.jpg')
sauna7.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

sauna8 = Sauna.new(name: "Warm Dreams",
                   seat: 5,
                   description: "Come to our sauna and enjoy!",
                   temperature: "90",
                   user: user8,
                   address: "Waßmannsdorfer Chaussee 23 Berlin")
sauna8.save!
file = URI.open('https://res.cloudinary.com/marcel-feindt/image/upload/v1614245493/sauna%20seeds/sauna_16_fqulms.jpg')
sauna8.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

sauna9 = Sauna.new(name: "The Wagon Sauna",
                   seat: 10,
                   description: "Perfect for after coding cooldown.",
                   temperature: "95",
                   user: user9,
                   address: "Wartburgstr. 22-24 Berlin")
sauna9.save!
file = URI.open('https://res.cloudinary.com/marcel-feindt/image/upload/v1614245491/sauna%20seeds/sauna_9_x6xs46.jpg')
sauna9.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

sauna10 = Sauna.new(name: "Death Valley",
                   seat: 8,
                   description: "Stress free sauna for hot lovers.",
                   temperature: "110",
                   user: user10,
                   address: "Kolonnenstraße 61, 10827 Berlin")
sauna10.save!
file = URI.open('https://res.cloudinary.com/marcel-feindt/image/upload/v1614245488/sauna%20seeds/sauna_17_lfxzuf.jpg')
sauna10.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

sauna11 = Sauna.new(name: "Santis Hotbox",
                   seat: 3,
                   description: "Come and have a beer.",
                   temperature: "85",
                   user: user11,
                   address: "Augsburger Str. 36-42, 10789 Berlin")
sauna11.save!
file = URI.open('https://res.cloudinary.com/marcel-feindt/image/upload/v1614245484/sauna%20seeds/sauna_14_cwlsgk.jpg')
sauna11.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

sauna12 = Sauna.new(name: "Relaxing Time",
                   seat: 7,
                   description: "Quiet and relaxing time.",
                   temperature: "90",
                   user: user12,
                   address: "Plesser Str. 1, 12435 Berlin Berlin")
sauna12.save!
file = URI.open('https://res.cloudinary.com/marcel-feindt/image/upload/v1614245479/sauna%20seeds/sauna_13_ckb9i7.jpg')
sauna12.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "Seeds ar done!  Go back to work now ;)"


