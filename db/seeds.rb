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
20.times {User.create(name: Faker::Name.name,
                    username: Faker::Name.initials,
                    occupation: Faker::Job.title,
                    quote: Faker::Quote.yoda)}

saima = User.create(name: "Saima Akhtar", username: "sja", occupation: "Architect", quote: "I like buildings")
injae = User.create(name: "Injae Lee", username: "ilee", occupation: "Entrepreneur", quote: "Ocean is my life")

#posts
post1 = Post.create(title: "That Discomfort You're Feeling is Grief", description: "I loved this HBR article on Covid and anticipatory grief. Check it out!", media_type: "Article", media_link: "https://hbr.org/2020/03/that-discomfort-youre-feeling-is-grief", user: saima)
post2 = Post.create(title: "Overcome Anxiety in 7 minutes", description: "Think you can beat anxiety in 7 minutes? Watch this and let me know what you think.", media_type: "Ted Talk", user: injae )


#follows

Follow.create(followee: saima, follower: injae)

#comments



#zens
Zen.create(user: injae, post: post1)