class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def authenticate
    authenticate_or_request_with_http_basic do |name, password|
      name == "admin" && password == "on demand and agile"
    end
  end
end
