# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create(:username => 'chicken', :email => 'chicken@chicken.com', :password => "chicken")
u2 = User.create(:username => 'katshaze', :email => 'katrinamargaret.hayes@gmail.com', :password => "chicken")
u3 = User.create(:username => 'eastcoastlow', :email => 'rob@rob.com', :password => 'rob')
u4 = User.create(:username => 'admin', :email => 'admin@admin.com', :password => 'admin')
u5 = User.create(:username => 'rooster', :email => 'rooster@rooster.com', :password => 'rooster')

Book.destroy_all
b1 = Book.create(:title => 'Jane Eyre', :author => 'Charlotte Bronte', :image => 'https://images.gr-assets.com/books/1327867269m/10210.jpg', :link => 'https://www.goodreads.com/book/show/10210.Jane_Eyre')
b2 = Book.create(:title => 'The Wind-Up Bird Chronicle', :author => 'Haruki Murakami', :image => 'https://images.gr-assets.com/books/1327872639m/11275.jpg', :link => 'https://www.goodreads.com/book/show/4929.Kafka_on_the_Shore?ac=1&from_search=true')
b3 = Book.create(:title => "Alice's Adventures in Wonderland", :author => 'Lewis Carroll', :image => 'https://images.gr-assets.com/books/1391204048l/6324090.jpg', :link => 'https://www.goodreads.com/book/show/6324090-alice-s-adventures-in-wonderland')
b4 = Book.create(:title => "A Visit from the Goon Squad", :author => 'Jennifer Egan', :image => 'https://images.gr-assets.com/books/1356844046m/7331435.jpg', :link => 'https://www.goodreads.com/book/show/7331435-a-visit-from-the-goon-squad?from_search=true')
b5 = Book.create(:title => "The Martian", :author => 'Andy Weir', :image => 'https://images.gr-assets.com/books/1413706054m/18007564.jpg', :link => 'https://www.goodreads.com/book/show/18007564-the-martian?from_search=true')
b6 = Book.create(:title => "The Post-Office Girl", :author => 'Stefan Zweig', :link => 'https://www.goodreads.com/book/show/2376087.The_Post_Office_Girl?from_search=true')
b7 = Book.create(:title => "Atonement", :author => 'Ian McEwan', :image => 'https://images.gr-assets.com/books/1320449708m/6867.jpg')
b8 = Book.create(:title => "Manhattan Beach", :author => 'Jennifer Egan', :image => 'https://images.gr-assets.com/books/1488832734l/34467031.jpg', :link => 'https://www.goodreads.com/book/show/34467031-manhattan-beach?from_search=true')
b9 = Book.create(:title => "As I Lay Dying", :author => 'William Faulkner', :image => 'https://images.gr-assets.com/books/1451810782m/77013.jpg')
b10 = Book.create(:title => "Through the Language Glass: Why the World Looks Different in Other Languages", :author => 'Guy Deutscher', :image => 'https://images.gr-assets.com/books/1317066228m/8444621.jpg')
