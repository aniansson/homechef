class LandingController < ApplicationController
  geocode_ip_address

  def index
    lat = session[:geo_location]['lat']
    lng = session[:geo_location]['lng']
    @dishes = Dish.within(4, origin: [lat,lng])
  end
end
