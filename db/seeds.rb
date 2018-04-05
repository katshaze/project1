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
b3 = Book.create(:title => "Alice's Adventures In Wonderland", :author => 'Lewis Carroll', :image => 'https://images.gr-assets.com/books/1391204048l/6324090.jpg', :link => 'https://www.goodreads.com/book/show/6324090-alice-s-adventures-in-wonderland')
b4 = Book.create(:title => "A Visit From The Goon Squad", :author => 'Jennifer Egan', :image => 'https://images.gr-assets.com/books/1356844046m/7331435.jpg', :link => 'https://www.goodreads.com/book/show/7331435-a-visit-from-the-goon-squad?from_search=true')
b5 = Book.create(:title => "The Martian", :author => 'Andy Weir', :image => 'https://images.gr-assets.com/books/1413706054m/18007564.jpg', :link => 'https://www.goodreads.com/book/show/18007564-the-martian?from_search=true')
b6 = Book.create(:title => "The Post-Office Girl", :author => 'Stefan Zweig', :link => 'https://www.goodreads.com/book/show/2376087.The_Post_Office_Girl?from_search=true')
b7 = Book.create(:title => "Atonement", :author => 'Ian McEwan', :image => 'https://images.gr-assets.com/books/1320449708m/6867.jpg')
b8 = Book.create(:title => "Manhattan Beach", :author => 'Jennifer Egan', :image => 'https://images.gr-assets.com/books/1488832734l/34467031.jpg', :link => 'https://www.goodreads.com/book/show/34467031-manhattan-beach?from_search=true')
b9 = Book.create(:title => "As I Lay Dying", :author => 'William Faulkner', :image => 'https://images.gr-assets.com/books/1451810782m/77013.jpg')
b10 = Book.create(:title => "Through The Language Glass: Why The World Looks Different In Other Languages", :author => 'Guy Deutscher', :image => 'https://images.gr-assets.com/books/1317066228m/8444621.jpg')

Reading.destroy_all
r1 = Reading.create(:read => true, :stars => "**")
r2 = Reading.create(:read => true, :stars => "***")
r3 = Reading.create(:read => true, :stars => "****")
r4 = Reading.create(:read => true, :stars => "*****")
r5 = Reading.create(:read => true, :stars => "*****")
r6 = Reading.create(:read => true, :stars => "****")
r7 = Reading.create(:read => true, :stars => "**")
r8 = Reading.create(:read => true, :stars => "*")
r9 = Reading.create(:read => true, :stars => "*****")
r10 = Reading.create(:read => true, :stars => "****")
r11 = Reading.create(:reading => true)
r12 = Reading.create(:reading => true)
r13 = Reading.create(:reading => true)
r14 = Reading.create(:reading => true)
r15 = Reading.create(:reading => true)
r16 = Reading.create(:reading => true)
r17 = Reading.create(:reading => true)
r18 = Reading.create(:reading => true)
r19 = Reading.create(:reading => true)
r20 = Reading.create(:reading => true)
r21 = Reading.create(:to_read => true)
r22 = Reading.create(:to_read => true)
r23 = Reading.create(:to_read => true)
r24 = Reading.create(:to_read => true)
r25 = Reading.create(:to_read => true)
r26 = Reading.create(:to_read => true)
r27 = Reading.create(:to_read => true)
r28 = Reading.create(:to_read => true)
r29 = Reading.create(:to_read => true)
r30 = Reading.create(:to_read => true)

u1.readings << r1
u1.readings << r11
u1.readings << r21
u1.readings << r2
u1.readings << r12
u1.readings << r22
u2.readings << r3
u2.readings << r4
u2.readings << r13
u2.readings << r14
u2.readings << r23
u2.readings << r24
u3.readings << r5
u3.readings << r6
u3.readings << r15
u3.readings << r16
u3.readings << r25
u3.readings << r26
u4.readings << r7
u4.readings << r8
u4.readings << r17
u4.readings << r18
u4.readings << r27
u4.readings << r28
u5.readings << r9
u5.readings << r10
u5.readings << r19
u5.readings << r20
u5.readings << r29
u5.readings << r30

b1.readings << r1
b1.readings << r11
b1.readings << r21
b2.readings << r2
b2.readings << r12
b2.readings << r22
b3.readings << r3
b3.readings << r13
b3.readings << r23
b4.readings << r4
b4.readings << r14
b4.readings << r24
b5.readings << r5
b5.readings << r15
b5.readings << r25
b6.readings << r6
b6.readings << r16
b6.readings << r26
b7.readings << r7
b7.readings << r17
b7.readings << r27
b8.readings << r8
b8.readings << r18
b8.readings << r28
b9.readings << r9
b9.readings << r19
b9.readings << r29
b10.readings << r10
b10.readings << r20
b10.readings << r30
