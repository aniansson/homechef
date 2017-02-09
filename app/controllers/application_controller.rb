class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, unless: :json_request?
  protect_from_forgery with: :null_session, if: :json_request?

  protected

  def json_request?
    request.format.json?
  end
end
