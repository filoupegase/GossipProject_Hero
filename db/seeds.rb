# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
  city_random = City.create!(name: Faker::Address.city ,zip_code: Faker::Address.zip )
end

puts"City Fakers : Generated"

10.times do
  user_random = User.create!(first_name: Faker::Name.first_name ,last_name: Faker::Name.last_name , age: rand(1..100), description: Faker::Hipster.sentence ,email: Faker::Internet.email , city_id: rand(1..City.count) )
end

puts"User Fakers : Generated"

20.times do
 gossip_random = Gossip.create!(content: Faker::Shakespeare.hamlet_quote, title: Faker::SiliconValley.invention , user_id: rand(1..User.count))
end

puts"Gossip Fakers : Generated"

10.times do
 tag_random = Tag.create!(title:Faker::Science.element )
end

puts"Tag Fakers : Generated"

10.times do
 gossiptag_random = GossipTag.create!(tag_id: rand(1..Tag.count),gossip_id: rand(1..Gossip.count))
end

puts"GossipTag Fakers : Generated"

20.times do
	private_message = PrivateMessage.create!(content: Faker::SiliconValley.motto, sender_id: rand(1..User.count))
	#sender_a = User.find(rand(User.ids.first..User.ids.last))
	#private_message.sender = sender_a
end

puts"PrivateMessages Fakers : Generated"

20.times do
	join_table_user_private_message = JoinTableUserPrivateMessage.create!(private_message_id: rand(1..PrivateMessage.count),recipient_id: rand(1..User.count))
end
