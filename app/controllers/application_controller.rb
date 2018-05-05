class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hiya
  	render html: "heyyyy bub"
  end
end
