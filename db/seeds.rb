require 'faker'

tun = User.create(username: "Tun", password: "1234", email: "tunkhine126@gmail.com", location: "Atlanta, GA.", bike_id: 1, img_url:"https://pbs.twimg.com/profile_images/1075438393805418496/JJb73qOS_200x200.jpg")
preston = User.create(username: "Preston", password: "1234", email: "preston@gmail.com", location: "Atlanta, GA.", bike_id: 2, img_url:"https://pbs.twimg.com/profile_images/1152326272510545923/rsfXPwiU_200x200.jpg")
will = User.create(username: "Will", password: "1234", email: "will@gmail.com", location: "Atlanta, GA.", bike_id: 3, img_url:"https://pbs.twimg.com/profile_images/1151697682311864320/heot9El-_200x200.jpg")
30.times do
  User.create(
    username: Faker::Name.unique.first_name,
    password: Faker::Code.sin,
    email: Faker::Internet.email,
    location: Faker::Address.city,
    bike_id: Faker::Number.between(1, 10),
    img_url: 'https://i.stack.imgur.com/34AD2.jpg'
  )
end

tunBike = Bike.create(category: "XC", name: "Rocky Mountain", frameset: "27.5", groupset: "Deore", wheelset: "Stock", suspension: "Stock", brakes: "Stock", user_id: 1, img_url: "https://forums.mtbr.com/attachments/27-5/753723d1358386071-rocky-mountain-2013-altitude-27-5-banshee-spitfire.jpg")
tunBike2 = Bike.create(category: "Downhill",name: "Canyon", frameset: "29r", groupset: "X1 Eagle", wheelset: "Stock", suspension: "Stock", brakes: "Stock", user_id: 1, img_url: "https://www.canyon.com/dw/image/v2/BCML_PRD/on/demandware.static/-/Sites-canyon-master/default/dw61ae4f8b/images/full/full_striv/2019/full_strive-cfr-9-team_c1321.png?sw=486&sh=273&sm=fit&sfrm=png")
tunBike3 = Bike.create(category: "Downhill",name: "Spesh", frameset: "29r", groupset: "X9", wheelset: "Stock", suspension: "Stock", brakes: "Stock", user_id: 1, img_url: "https://s7d5.scene7.com/is/image/Specialized/165763")
presBike = Bike.create(category: "Downhill",name: "Canyon", frameset: "29r", groupset: "X1 Eagle", wheelset: "Stock", suspension: "Stock", brakes: "Stock", user_id: 2, img_url: "https://www.canyon.com/dw/image/v2/BCML_PRD/on/demandware.static/-/Sites-canyon-master/default/dw61ae4f8b/images/full/full_striv/2019/full_strive-cfr-9-team_c1321.png?sw=486&sh=273&sm=fit&sfrm=png")
willBike = Bike.create(category: "Downhill",name: "Spesh", frameset: "29r", groupset: "X9", wheelset: "Stock", suspension: "Stock", brakes: "Stock", user_id: 3, img_url: "https://s7d5.scene7.com/is/image/Specialized/165763")
30.times do
  Bike.create(
    category: Faker::Name.unique.first_name,
    name: Faker::Company.name,
    frameset: "XC",
    groupset: "Stock",
    wheelset: "Stock",
    suspension: "Stock",
    brakes: "Stock",
    user_id: Faker::Number.between(1, 50),
    img_url: 'https://www.bikes.com/sites/default/files/styles/homeslide_tall/public/Web_InstinctBC10_RBell_Ecuador.jpg?'
  )
end

# 30.times do
#   Trail.create(
#     user_id: Faker::Number.between(1, 50),
#     api_index: Faker::Number.between(6463207, 7024887),
#   )
# end

# 100.times do
#   Following.create.(
#     user_id: Faker::Number.between(1, 50),
#     followed_user_id: Faker::Number.between(1, 50)
#   )
#   end