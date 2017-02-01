class LandingController < ApplicationController
  geocode_ip_address

  def index
    if session[:geo_location].is_a?(Hash)
      lat = session[:geo_location]['lat']
      lng = session[:geo_location]['lng']
    else
      lat = session[:geo_location].lat
      lng = session[:geo_location].lng
    end
    @dishes = Dish.within(4, origin: [lat,lng])
  end
end
