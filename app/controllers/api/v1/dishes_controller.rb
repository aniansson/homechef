class Api::V1::DishesController < ApiController

  def index
    @dishes = Dish.all
    render json: {entries: @dishes}
  end
end
