# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Score.delete_all
Avatar.delete_all
User.delete_all

score1 = Score.create(user_number: 7, points: 100, max_distance: 20, username: "lou")
score2 = Score.create(user_number: 7, points: 1000, max_distance: 200, username: "lou")
score3 = Score.create(user_number: 6, points: 500, max_distance: 100, username: "mike")

avatar1 = Avatar.create(name: "Bad Santa", image: '/Avatars/bad-santa.png')
avatar2 = Avatar.create(name: "Ice Cream Truck", image: '/Avatars/ice-cream-truck.png')
avatar3 = Avatar.create(name: "Badass Biker", image: '/Avatars/badass-biker.png')
avatar4 = Avatar.create(name: "Pink Tracktor", image: '/Avatars/pink-tracktor.png')
avatar5 = Avatar.create(name: "Billy Billions", image: '/Avatars/billy-billions.png')
avatar6 = Avatar.create(name: "Tonka Tonka", image: '/Avatars/tonka-tonka.png')
avatar7 = Avatar.create(name: "Weiner Truck", image: '/Avatars/weiner-truck.png')
# avatar8 = Avatar.create(name: "Fire Truck", image: '/Avatars/fire-truck.png')
# avatar9 = Avatar.create(name: "School Bus", image: '/Avatars/school-bus.png')

lou = User.create(username: "lou", password: "lou", avatar_id: avatar1.id)
mike = User.create(username: "mike", password: "mike", avatar_id: avatar2.id)