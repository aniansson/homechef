class Api::V1::ChargesController < ApiController
  before_action :authenticate_api_v1_user!

  def create
    @order = current_api_v1_user.orders.where(finalized: false).last
    @items = @order.shopping_cart_items
    @total_amount = @order.total
    @amount = @total_amount.to_i*100

    customer = Stripe::Customer.create(
        email: params[:stripeEmail],
        source: params[:source]
    )

    charge = Stripe::Charge.create(
        customer: customer.id,
        amount: @amount,
        description: 'Rails Stripe customer',
        currency: 'usd'
    )

    if charge.paid
      @order.update(finalized: true)
      session.delete :order_id
      drop_portions
      render 'show'
    end

  rescue Stripe::CardError => e
    render json: {error: e.message}, status: :error
  end

  private

  def drop_portions
    @order.shopping_cart_items.each do |dish_item|
      dish = Dish.find(dish_item.item.id)
      dish.update(portions: dish.portions - dish_item.quantity)
    end
  end

  def stripe_token(params)
    Rails.env.test? ? generate_test_token : params[:stripeToken]
  end

  def generate_test_token
    StripeMock.create_test_helper.generate_card_token
  end
end
