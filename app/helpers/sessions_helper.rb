module SessionsHelper
  def log_in(user)
    # accepts user object and creates a session for the user
    session[:user_id] = user.id
  end

  def current_user
    # returns current_user if there is a user and a session prsesent
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end

  def logged_in?
    # boolean check if there is a current_user
    !current_user.nil?
  end

  def log_out
    # logs out current_user by deleting the session and setting current_user to nil
    session.delete(:user_id)
    @current_user = nil
  end

  def current_user?(user)
    user == current_user
  end

# REWRITE
  def redirect_back_or(default)i
    # redirect a non logged-in user to the first URL after logging in?
    redirect_to(session[:forwarding_url] || default)
    session.delete(:forwarding_url)
  end

  def store_location
    # stores the first loaded URL
    session[:forwarding_url] = request.original_url if request.get?
  end
end
