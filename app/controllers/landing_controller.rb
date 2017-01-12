class LandingController < ApplicationController
  def index
    @dishes = Dish.all
  end

  def checkout
    @totalamount = 50
    # ShoppingCart.find_by(id: 1).shopping_cart_items.each do |shoppingcartitem|
    #   @totalamount += shoppingcartitem.item.price
    # end
    @totalamount = (@totalamount / 9.11).round(2)
  end
end
