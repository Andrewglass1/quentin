class ApplicationController < ActionController::Base
  protect_from_forgery

  def redirect_unless_admin
    unless Rails.env == "development"
      authenticate_or_request_with_http_basic do |username, password|
        username == ENV['LINDSEYUSERNAME'] && password == ENV['LINDSEYPASSWORD']
      end
    end
  end

end
