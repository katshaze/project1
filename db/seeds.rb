# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
User.create(:username => 'chicken', :email => 'chicken@chicken.com', :password => "chicken")
User.create(:username => 'katshaze', :email => 'katrinamargaret.hayes@gmail.com', :password => "chicken")
User.create(:username => 'eastcoastlow', :email => 'rob@rob.com', :password => 'rob')

Book.destroy_all
Book.create(:title => 'Jane Eyre', :author => 'Charlotte Bronte', :link => 'https://www.goodreads.com/book/show/10210.Jane_Eyre')
Book.create(:title => 'Kafka on the Shore', :author => 'Haruki Murakami', :link => 'https://www.goodreads.com/book/show/4929.Kafka_on_the_Shore?ac=1&from_search=true')
Book.create(:title => "Alice's Adventures in Wonderland", :author => 'Lewis Carroll', :link => 'https://www.goodreads.com/book/show/6324090-alice-s-adventures-in-wonderland')
