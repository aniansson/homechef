class Api::V1::OrdersController < ApiController
  before_action :authenticate_api_v1_user!

  def create
    create_order
    begin
      dish = Dish.find(params[:dish_id])
    rescue ActiveRecord::RecordNotFound
      render json: { message: "Something went wrong, you did not add a dish to your order" }, status: :unprocessable_entity and return
    end
    @order.add(dish, dish.price)
    render json: {message: "Successfully added #{dish.name}"}, status: :ok
  end

  private

  def create_order
    user = current_api_v1_user
    Order.find_by(user: user) != nil ? @order = Order.find_by(user: user) : @order = Order.create(user: user)
  end
end
