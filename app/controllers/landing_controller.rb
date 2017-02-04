class LandingController < ApplicationController
  include Geokit::Geocoders
  include GeokitHelper
  geocode_ip_address

  def index
    @dishes = Dish.within(4, origin: get_geolocation)
  end

  def address_search
    location = GoogleGeocoder.geocode(params[:address])
    session[:geo_location]['lng'] = location.lng
    session[:geo_location]['lat'] = location.lat
    @dishes = Dish.within(10, origin: location)
    redirect_back(fallback_location: root_path)
  end
end
