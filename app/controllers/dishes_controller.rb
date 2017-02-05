class DishesController < ApplicationController
  include Geokit::Geocoders

  def new
  end

  def create
    location = GoogleGeocoder.geocode(params[:address])
    @user_dish = Dish.create(name: params[:name], description: params[:description], price: params[:price], portions: params[:dish][:portions], ready_time: params[:dish][:ready_time], lat: location.lat, lng: location.lng, user: current_user)
    redirect_back(fallback_location: new_user_dish_path(current_user))
    flash[:notice] = "Successfully added  #{@user_dish.portions} portions of #{@user_dish.name} at $#{@user_dish.price} each to your dishes"
  end
end