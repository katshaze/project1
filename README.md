# Project1 Book Pinch

## What I solved
A book search and track app where you can separate out your highest rated books, then find other users with similar book loves to get ideas for your next book to pinch.

## Get it running
* Open in your browser using:
https://bookpinch.herokuapp.com

## Built with
* Ruby on Rails
* HTML & CSS

## Demo
* Sign up and login
* Search books
* Add books to your book tracking collection
* For your favourites, find users who also loved the book and explore their other favourites
* Logout

## Schema & Models
* Users table (a user has many readings)
* Books table (a book has many readings)
* 'Readings' table (an instance of a user (user_id) tracking a book (book_id) and info on the read status and rating) (a reading belongs to both a user and a book)

## Cool beans
* Combined search via Goodreads API and search of existing Book Pinch books database
* Ability to see other users with similar book taste

## Sore bits
* Book search is limited - only gets top hit, can only search by book title
* CSS not finished; haven't touched on responsiveness
* Read status options aren't in 'select' format
* Results displayed from goodreads search are limited - need description & goodreads link at least

## To do
- [ ] Make it responsive, particularly for mobile
- [ ] Readings model: combine three read status columns into single column
- [ ] All books index to include top 50 searched books rather than all books
- [ ] User homepage - improve the display
- [ ] Book search results to include description & link to book on Goodreads

## Licensing
Dual licensed under the MIT and GPL licenses.

## Thanks to
* Joel Turnbull for helping me wrap my head around the schema and model for 'readings'
* Joel, John and Theo & my classmates at GA for support and bug fixing.
