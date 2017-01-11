class ChargesController < ApplicationController
  def new
    @totalamount = 0

    ShoppingCart.find_by(id: 1).shopping_cart_items.each do |shoppingcartitem|
      @totalamount += shoppingcartitem.item.price
    end
    @totalamount = (@totalamount / 9.11).round(2)
end

def create
  @amount = (@totalamount*100)

  customer = Stripe::Customer.create(
    email: params[:stripeEmail],
    source: params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    customer: customer.id,
    amount: @amount,
    description: 'Rails Stripe customer',
    currency: 'usd'
  )

rescue Stripe::CardError => e
  flash[:error] = e.messageg
  redirect_to new_charge_path
end
end
