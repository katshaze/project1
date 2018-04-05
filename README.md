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

## Schema
* Users table
* Books table
* 'Readings' table (an instance of a user (user_id) tracking a book (book_id) and info on the read status and rating)

## Models
* A user has many readings
* A book has many readings
* A reading belongs to both a user and a book

## To do
- [ ] Make it responsive, particularly for mobile
- [ ] Readings model: combine three read status columns into single column
- [ ] All books index to include top 50 searched books rather than all books

## Licensing
Dual licensed under the MIT and GPL licenses.

## Thanks to
* Joel Turnbull for helping me wrap my head around the schema and model for 'readings'
* Joel, John and Theo & my classmates at GA for support and bug fixing.
