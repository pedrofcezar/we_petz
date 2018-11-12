# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Article.last.destroy!

article1 = Article.create!(author: 'Pepe', title: 'Pets safaadinhos', content: "Pets safadinhosPets safadinhosPets safadinhos", dog_key:true, cat_key:true, product_key:true, pet_key:false )
review1 = Review.create!(name: 'Cucu', review_content: "OMGOMGOMGOMGOMGOMGOMGOMGOMGOMGOMGOMGOMGOMGOMGOMGOMGOMGOMGOMG", star: 3, article: article1)

# articles = Article.create([{author: 'Pepe', title: 'Pets safaadinhos', content: "Pets safadinhosPets safadinhosPets safadinhos", dog_key:true, cat_key:true, product_key:true, pet_key:false }])
# reviews = Review.create([{name: 'Cucu', review_content: "OMGOMGOMGOMGOMGOMGOMGOMGOMGOMGOMGOMGOMGOMGOMGOMGOMGOMGOMGOMG", star: 3, article_id: Article.last}])

puts "Yeah bitch yes!"
