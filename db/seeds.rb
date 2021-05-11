# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

demo_user = User.create(username: "Fares", password: "test12345")

demo_image = Image.new(title: "Piggy", body: "Nice", user_id: User.last.id)

file = File.open("app/assets/images/1902.jpg")

demo_image.photo.attach(io: file, filename: "pig.jpg")

demo_image.save!
