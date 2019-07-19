# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tun = User.create(username: "Tun", password: "1234", email: "tunkhine126@gmail.com", location: "Atlanta, GA.")
preston = User.create(username: "Preston", password: "1234", email: "preston@gmail.com", location: "Atlanta, GA.")
will = User.create(username: "Will", password: "1234", email: "will@gmail.com", location: "Atlanta, GA.")