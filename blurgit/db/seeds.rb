# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


5.times do
  article = Article.new
  article.title = Faker::Company.catch_phrase
  article.body = Faker::Lorem.paragraphs(3).join("\n\n")

  article.save
end
