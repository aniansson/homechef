module GeokitHelper
  def get_geolocation
    if session[:geo_location].is_a?(Hash) && session[:geo_location]['lat']
      lat = session[:geo_location]['lat']
      lng = session[:geo_location]['lng']
    elsif session[:geo_location].is_a?(Hash)
      lat = session[:geo_location]['ll'].split(',')[0].to_f
      lng = session[:geo_location]['ll'].split(',')[1].to_f
    else
      lat = session[:geo_location].lat
      lng = session[:geo_location].lng
    end
    [lat, lng]
  end
end