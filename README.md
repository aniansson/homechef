# Homechef
This is the midcourse project for the Nov -16 cohort from Craft Academy Bootcamp. A project that will develop into a website where users can buy homecooked food from amateur homechefs.

### Pivotal Tracker
[Pivotal](https://www.pivotaltracker.com/n/projects/)

### Build
[![Build Status](https://travis-ci.org/CraftAcademy/homechef.svg?branch=develop)](https://travis-ci.org/CraftAcademy/homechef)

### Coverage
[![Coverage Status](https://coveralls.io/repos/github/CraftAcademy/homechef/badge.svg?branch=develop)](https://coveralls.io/github/CraftAcademy/homechef?branch=develop)

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

To be able to install and run the application you need to have Rails 5 and PostgreSQL installed.

### Installing

Fork and clone repo, then run:
```
$ bundle install
```

And then:

```
$rake db:migrate db:seed
```

## Running the tests

End with an example of getting some data out of the system or using it for a little demo

```
$ rake
```

## Deployment

We are using [Travis](https://travis-ci.org) for continous integration and Heroku](http://heroku.com/) for deployment.

For deployment, change the information in the `.travis.yml` file. For API-key;

```
$ travis encrypt $(heroku auth:token) —add deploy.api_key
```

### Deployed at [https://homechefs.herokuapp.com/](https://homechefs.herokuapp.com/)

## Built With

  * [Travis](https://travis-ci.org) - Used for continous integration
  * [Coveralls](https://coveralls.io) - To track code coverage
  * [Heroku](http://heroku.com/) - For deployment
  * [Ruby on Rails](http://rubyonrails.org) — Web Framework
  * [Devise](https://github.com/plataformatec/devise) — Authentication library
  * [Twitter Bootstrap](http://getbootstrap.com) — Front-end framework
  * [Stripe](https://github.com/stripe/stripe-ruby) - Payment solution

For testing purposes we used:

  * Pry
  * Pry-byebug
  * Rspec-rails
  * Shoulda-matchers
  * Factory_girl_rails
  * Cucumber-rails
  * Database_cleaner
  * Capybara
  * Capybara-screenshot
  * Poltergeist

## Authors
  * **Craft Academy** - [CraftAcademy](https://github.com/CraftAcademy)
  * **Ebba Aniansson** - [aniansson](https://github.com/aniansson)
  * **Kristoffer Karlsson** - [kriizjones](https://github.com/kriizjones)
  * **Philip Zudemberg** - [Philippoes](https://github.com/Philippoes)
  * **Rodrigo Muños** - [rmzse](https://github.com/rmzse)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* https://github.com/crowdint/acts_as_shopping_cart
* https://github.com/geokit/geokit-rails
