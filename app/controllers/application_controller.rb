class ApplicationController < ActionController::Base
  include SessionsHelper

  private
  def logged_in_user
    unless logged_in?
      # store location before logged in so that user can be redirected to it after logging in
      store_location
      flash[:danger] = "Please log in."
      # redirect back to login form if user hasn't logged in 
      redirect_to login_url
    end
  end
end
