SpreeNews
=========

This is an extension for Spree 2.2 that allows an Admin to create and manage posts in the admin panel. Posts that are marked as published will show up on the home page in a news ticker window that uses jquery to slide between posts. If there are no published posts, the news ticker window will not show up on the home page.


Installation
=======

Create a new rails/spree app:

    rails new mystore
    spree install mystore
    cd mystore

Then add the following to your Gemfile:

    gem 'spree_news'

Then install the extension and start the server:

    bundle install
    rails g spree_news:install (select 'yes' to run migrations)
    rails s

Usage
=======

To use, go to /admin and select the 'posts' tab. Create a new post with a title and description and select the 'published' check box to make it appear on the home page.

Once created, navigate to '/' to see the news ticker show up below the products.
