# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

saima = User.create(first_name: "Saima", last_name: "Akhtar", about: "Architect turned SEI Student", interests: "Buildings and Design")
injae = User.create(first_name: "Injae", last_name: "Lee", about: "Entrepreneur turned SEI Student", interests: "Ocean and Coding")

Post.create(title: "That Discomfort You're Feeling is Grief", description: "I loved this HBR article on Covid and anticipatory grief. Check it out!", media_type: "Article", user: saima)
Post.create(title: "Overcome Anxiety in 7 minutes", description: "Think you can beat anxiety in 7 minutes? Watch this and let me know what you think.", media_type: "Ted Talk", user: injae )