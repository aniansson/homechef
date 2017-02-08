class Api::V1::ChargesController < ApiController

  def create
    @order = Order.find(params[:order_id])
    @items = @order.shopping_cart_items
    @total_amount = @order.total
    @amount = @total_amount.to_i*100
    render json: {message: "Thanks you paid "}, status: :ok
  end

end
