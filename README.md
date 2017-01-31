# Homechef
This is the midcourse project for the Nov -16 cohort from Craft Academy Bootcamp. A project that will develop into a website where users can buy homecooked food from amateur homechefs.


[![Build Status](https://travis-ci.org/CraftAcademy/homechef.svg?branch=develop)](https://travis-ci.org/CraftAcademy/homechef)

### Coverage
[![Coverage Status](https://coveralls.io/repos/github/CraftAcademy/homechef/badge.svg?branch=develop)](https://coveralls.io/github/CraftAcademy/homechef?branch=develop)

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

What things you need to install the software and how to install them

```
Give examples
```

### Installing

A step by step series of examples that tell you have to get a development env running


Fork and clone repo, then:
```
Give the example
```

And repeat

```
until finished
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

## Built With

* [Travis](https://travis-ci.org) - Used for continous integration
* [Coveralls](https://coveralls.io) - To track code coverage
* [Heroku](http://heroku.com/) - For deployment
* [Ruby on Rails](http://rubyonrails.org) — Web Framework
* [Devise](https://github.com/plataformatec/devise) — Authentication library
* [Twitter Bootstrap](http://getbootstrap.com) — Front-end framework
* [Stripe](https://github.com/stripe/stripe-ruby) - Payment solution

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
