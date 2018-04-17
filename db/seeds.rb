# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

author_list = [
{
  name: "Stephen King"
},
{
  name: "Ken Follett"
},
{
  name: "Lady Blue"
 }
]

author_list.each do |author|
  Author.create(author)
  puts "#{author[:name]}"
end

book_list = [
{title: "Green Mile", description: "Prison story.", author_id: Author.first},
{title: "Eye of the Needle", description: "Spy novel.", author_id: Author.all.sample.id},
{title: "Fake Book", description: "A blue lady writes a book.", author_id: Author.last}
]

book_list.each do |book|
  Book.create(book)
end
