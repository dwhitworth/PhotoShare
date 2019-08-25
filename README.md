# README

## Overview
This is a social media application for sharing photos with other users of the application

## Stack
- Ruby 2.3.7
- Rails 5.2.3
- PostgreSQL 11.4

## Dependencies
- Devise for User Authentication

## Getting Started
- Clone this repo
- `bundle install` to install all required dependencies
- `rake db:migrate` to make all database migrations
- `rails s` to start the local server

## Test suite
RSpec and Capybara and FactoryBot are used for feature testing
`rspec spec/features/<filename>` to run tests for individual features

## User Stories
**Bold indicates in progress**
###USER NOT SIGNED IN:

- ~~As a non-signed-in user without an account, I can register a new account~~
- ~~As a non-signed in user with an account, I can login~~
- ~~As a non-signed in user with an account, I can request an email to reset my password~~
- ~~As a non-signed in user with an account, I can reset my password from an email link~~

USER SIGNED IN:

- As a signed in user, I can edit my personal details
- ~~As a signed in user, I can create a new post~~
- ~~As a signed in user, I can view other users profiles~~
- **As a signed in user, I can follow other users**
- **As a signed in user, I can view posts from other users I have followed in my feed**
- ~~As a signed in user, I can view my own posts~~
- ~~As a signed in user, I can delete my own posts~~
- As a signed in user, I can comment on posts
- As a signed in user, I can reply to comments
- As a signed in user, I can ‘like’ other peoples posts
- As a signed in user, I can view posts I have ‘liked’
- As a signed in user, I can message other users
- As a signed in user, I can view all user messages sent to me
- As a signed in user, I can mark messages as “read”
- As a signed in user, I can see a notification that I have unread messages
- As a signed in user, I can reply to other user messages
- As a signed in user, I can share posts with other users to their inbox

