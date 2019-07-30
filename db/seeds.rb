# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tun = User.create(username: "Tun", password: "1234", email: "tunkhine126@gmail.com", location: "Atlanta, GA.", bike_id: 1, img_url:"https://pbs.twimg.com/profile_images/1075438393805418496/JJb73qOS_200x200.jpg")
preston = User.create(username: "Preston", password: "1234", email: "preston@gmail.com", location: "Atlanta, GA.", bike_id: 2, img_url:"https://pbs.twimg.com/profile_images/1152326272510545923/rsfXPwiU_200x200.jpg")
will = User.create(username: "Will", password: "1234", email: "will@gmail.com", location: "Atlanta, GA.", bike_id: 3, img_url:"https://pbs.twimg.com/profile_images/1151697682311864320/heot9El-_200x200.jpg")

tunBike = Bike.create(category: "XC", name: "Rocky Mountain", frameset: "27.5", groupset: "Deore", wheelset: "Stock", suspension: "Stock", brakes: "Stock", user_id: 1, img_url: "https://forums.mtbr.com/attachments/27-5/753723d1358386071-rocky-mountain-2013-altitude-27-5-banshee-spitfire.jpg")
tunBike2 = Bike.create(category: "Downhill",name: "Canyon", frameset: "29r", groupset: "X1 Eagle", wheelset: "Stock", suspension: "Stock", brakes: "Stock", user_id: 1, img_url: "https://www.canyon.com/dw/image/v2/BCML_PRD/on/demandware.static/-/Sites-canyon-master/default/dw61ae4f8b/images/full/full_striv/2019/full_strive-cfr-9-team_c1321.png?sw=486&sh=273&sm=fit&sfrm=png")
tunBike3 = Bike.create(category: "Downhill",name: "Spesh", frameset: "29r", groupset: "X9", wheelset: "Stock", suspension: "Stock", brakes: "Stock", user_id: 1, img_url: "https://s7d5.scene7.com/is/image/Specialized/165763")
presBike = Bike.create(category: "Downhill",name: "Canyon", frameset: "29r", groupset: "X1 Eagle", wheelset: "Stock", suspension: "Stock", brakes: "Stock", user_id: 2, img_url: "https://www.canyon.com/dw/image/v2/BCML_PRD/on/demandware.static/-/Sites-canyon-master/default/dw61ae4f8b/images/full/full_striv/2019/full_strive-cfr-9-team_c1321.png?sw=486&sh=273&sm=fit&sfrm=png")
willBike = Bike.create(category: "Downhill",name: "Spesh", frameset: "29r", groupset: "X9", wheelset: "Stock", suspension: "Stock", brakes: "Stock", user_id: 3, img_url: "https://s7d5.scene7.com/is/image/Specialized/165763")

tunRide = Ride.create(user_id: 1, date: "22 July 2019", description: "Best ever", trail_id: 1234)
presRide = Ride.create(user_id: 2, date: "21 July 2019", description: "Gnarly", trail_id: 1111)
tunRide = Ride.create(user_id: 3, date: "20 July 2019", description: "Dead", trail_id: 1222)

tunComment = Comment.create(user_id: 1, ride_id: 3, date: "20 July 2019", comment: "Looked lame")
presComment = Comment.create(user_id: 2, ride_id: 3, date: "20 July 2019", comment: "Nice job!")
willComment = Comment.create(user_id: 3, ride_id: 1, date: "20 July 2019", comment: "WEAK")
