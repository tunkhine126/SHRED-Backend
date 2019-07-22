# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tun = User.create(username: "Tun", password: "1234", email: "tunkhine126@gmail.com", location: "Atlanta, GA.", bike_id: 1)
preston = User.create(username: "Preston", password: "1234", email: "preston@gmail.com", location: "Atlanta, GA.", bike_id: 2)
will = User.create(username: "Will", password: "1234", email: "will@gmail.com", location: "Atlanta, GA.", bike_id: 3)

tunBike = Bike.create(name: "Rocky Mountain", frameset: "26r", groupset: "Deore", wheelset: "Stock", suspension: "Stock", brakes: "Stock", user_id: 1)
presBike = Bike.create(name: "Canyon", frameset: "29r", groupset: "X1 Eagle", wheelset: "Stock", suspension: "Stock", brakes: "Stock", user_id: 2)
willBike = Bike.create(name: "Spesh", frameset: "29r", groupset: "X9", wheelset: "Stock", suspension: "Stock", brakes: "Stock", user_id: 3)

tunRide = Ride.create(user_id: 1, date: "22 July 2019", description: "Best ever", trail_id: 1234)
presRide = Ride.create(user_id: 2, date: "21 July 2019", description: "Gnarly", trail_id: 1111)
tunRide = Ride.create(user_id: 3, date: "20 July 2019", description: "Dead", trail_id: 1222)

tunComment = Comment.create(user_id: 1, ride_id: 3, date: "20 July 2019", comment: "Looked lame")
presComment = Comment.create(user_id: 2, ride_id: 3, date: "20 July 2019", comment: "Nice job!")
willComment = Comment.create(user_id: 3, ride_id: 1, date: "20 July 2019", comment: "WEAK")
