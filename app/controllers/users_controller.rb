class UsersController < ApplicationController
  # before the user accesses the show method, first call the logged_in_user method
  before_action :logged_in_user, only: [:show]

  def show
    # load user by ID
    @user = User.find(params[:id])
  end

  def new
    # initialize new user object before validations run
    @user = User.new
  end 

  def create
    # create new user object wih user params if validations are passed
    @user = User.new(user_params)
    # save new valid user object
    if @user.save
      flash[:success] = "Welcome to a new brain! Maybe?!"
      # where does @user redirect to?? User#home?
      redirect_to @user
    else
      # render the form? Figure out the difference between using a string to render vs an object instance to redirect_to?
      render 'new'
    end
  end
  
  private 

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
