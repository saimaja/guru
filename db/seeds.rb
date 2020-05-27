# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
Post.destroy_all
Zen.destroy_all
Comment.destroy_all

#users

u1 = User.create(name: "Saima Akhtar", username: "sja", occupation: "Architect", quote: Faker::Quote.yoda, password: 'test', photo_url: )
u2 = User.create(name: "Injae Lee", username: "ilee", occupation: "Entrepreneur", quote: Faker::Quote.yoda, password: 'test', photo_url: )
u3 = User.create(name: "Steve Jobs", username: "jobs", occupation: Faker::Job.title, quote: Faker::Quote.yoda, password: 'test', photo_url: )
u4 = User.create(name: "Sai Maa", username: "sai", occupation: Faker::Job.title, quote: Faker::Quote.yoda, password: 'test', photo_url: )
u5 = User.create(name: "Denpok Singh", username: "den", occupation: Faker::Job.title, quote: Faker::Quote.yoda, password: 'test', photo_url: )
u6 = User.create(name: "Osho", username: "ilee", occupation: Faker::Job.title, quote: Faker::Quote.yoda, password: 'test', photo_url: "https://www.oshonews.com/wp-content/uploads/2018/07/Osho.jpg" )
u7 = User.create(name: "Yoda", username: "ilee", occupation: Faker::Job.title, quote: Faker::Quote.yoda, password: 'test', photo_url: )
u8 = User.create(name: "", username: "ilee", occupation: Faker::Job.title, quote: Faker::Quote.yoda, password: 'test', photo_url: )
u9 = User.create(name: "Injae Lee", username: "ilee", occupation: Faker::Job.title, quote: Faker::Quote.yoda, password: 'test', photo_url: )
u10 = User.create(name: "Injae Lee", username: "ilee", occupation: Faker::Job.title, quote: Faker::Quote.yoda, password: 'test', photo_url: )


#posts
p1 = Post.create(title: "That Discomfort You're Feeling is Grief", description: "I loved this HBR article on Covid and anticipatory grief. Check it out!", media_type: "Article", media_link: "https://hbr.org/2020/03/that-discomfort-youre-feeling-is-grief", user: saima)
p2 = Post.create(title: "Overcome Anxiety in 7 minutes", description: "Think you can beat anxiety in 7 minutes? Watch this and let me know what you think.", media_type: "Ted Talk", user: injae )


#follows

Follow.create(followee: saima, follower: injae)

#comments



#zens
Zen.create(user: injae, post: post1)