class LandingController < ApplicationController
  def index
    @dishes = Dish.all
  end

  def checkout
    @total_amount = 50
    @total_amount = (@total_amount / 9.11).round(2)
  end
end
