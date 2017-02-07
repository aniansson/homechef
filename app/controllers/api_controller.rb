class ApiController < ActionController::API
  before_action :set_default_response_format

  protect_from_forgery with: :null_session
  include DeviseTokenAuth::Concerns::SetUserByToken


  protected

  def set_default_response_format
    request.format = :json
  end
end
