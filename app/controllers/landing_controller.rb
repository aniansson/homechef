class LandingController < ApplicationController
  include Geokit::Geocoders
  geocode_ip_address

  def index
    if session[:geo_location].is_a?(Hash)
      lat = session[:geo_location]['lat']
      lng = session[:geo_location]['lng']
    else
      lat = session[:geo_location].lat
      lng = session[:geo_location].lng
    end
    @dishes = Dish.within(10, origin: [lat, lng])
    binding.pry

  end

  def address_search
    location = GoogleGeocoder.geocode(params[:address])
    session[:geo_location]['lng'] = location.lng
    session[:geo_location]['lat'] = location.lat
    binding.pry
    @dishes = Dish.within(10, origin: location)
    render 'landing/index'
  end
end
