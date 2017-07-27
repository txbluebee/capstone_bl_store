# Brian & Lily's Shopping Wonderland

#### Independent Capstone Project, 07/27/2017

#### By Brian Fan

## Description

Brian & Lily's Shopping Wonderland is the e-commerce site where admin user has basic CRUD functionality to add, edit, and delete product info and regular login user would be able to add product to the cart, checkout and see their order history.

## Core Functionality
* E-Commerce User Stories:
- [x] As a user, I should be able to add and remove items from my shopping cart.
- [x] As a user, I'd like to see my shopping cart updated when I make changes.
- [x] As a user, my shopping cart should be cleared once I've completed my order.
- [ ] As a user, I'd like to see the number of items in my shopping cart and the total cost of my order in the navbar (and not just on the shopping cart page).
- [ ] As a user, I'd like to be able to see which items are on sale, along with the percentage they've been discounted.
- [x] As a user, I'd like to be able to pay for my order online (see API User Stories below).
- [x] As a user, I'd like to see a history of my previous orders.
- [x] As a user, I'd like to be able to see and add reviews to products.
As a user, I'd like my current shopping cart to be associated with my account so I can log in and access my cart from any device.
* Admin Stories:
- [x] As an admin, I should have full CRUD functionality to add products.
- [ ] Administrators should also have the option to delete inappropriate user reviews or comments.

### Further Exploration
- [] Custom CSS styling
- [] User can favorite the products

## Prerequisites & Installation

* install rails gem,  [instructions](https://www.learnhowtoprogram.com/rails/ruby-on-rails-basics/rails-setup-and-structure).
* install Postgres followed by the [instructions](https://www.learnhowtoprogram.com/ruby/ruby-database-basics/installing-postgres-7fb0cff7-a0f5-4b61-a0db-8a928b9f67ef).
* `git clone https://github.com/txbluebee/commerce_site`
* `cd commerce_site`
* `bundle install`
* Open new tab in the terminal (Alt +T) and run the following command
* `postgres`
* `rails db:create`
* `rails db:migrate db:test:prepare`
* `rails db:seed`


## Running / Development

* `rails server`
* Visit your app at [http://localhost:3000](http://localhost:3000).
* Login as Admin User :
* `email: admin@gmail.com`
* `password: 123456`

## Technologies Used

_HTML_

_SCSS_

_Bootstrap_

_Ruby_

_Ruby on Rails_

### License

Copyright (c) 2017 Brian Fan
The website is licensed under the MIT license.
