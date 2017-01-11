class LandingController < ApplicationController
  def index
    @dishes = Dish.all
    @totalamount = 0
  end

  def checkout
    ShoppingCart.find_by(id: 1).shopping_cart_items.each do |shoppingcartitem|
      @totalamount += shoppingcartitem.item.price
    end
    @totalamount = (@totalamount / 9.11).round(2)
  end
end
