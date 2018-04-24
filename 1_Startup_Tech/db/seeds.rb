# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

#Ajout de fake users nommés comme les espèces de StarWars

10.times do
	user = User.create(name: Faker::StarWars.specie)
end

50.times do
    x = rand(1..10)
    u = User.find(x)
    article = Article.create(name: Faker::StarWars.character, body: Faker::StarWars.quote, description: Faker::StarWars.wookiee_sentence, user_id: u.id)
end

100.times do 
    category = Category.create(name: Faker::StarWars.planet)

end
