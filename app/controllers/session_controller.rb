class SessionController < ApplicationController
  def new
  end

  def create
    # Find the user based on their email or username
    @user = User.where("email = ? OR username = ?", params[:email_or_username], params[:email_or_username]).first
    
    # If the password authenticates
    if @user.present? && @user.authenticate(params[:password])
      # remember this user in the session
      session[:user_id] = @user.id # only storing user_id to not use up too much memory. so remembers user by id
      redirect_to root_path
    else
      flash[:error] = "Oops! Invalid email, username or password" # store in flash means next page sees it, but one after it's gone.
      # send them to the login page again
      redirect_to login_path
    end
  end

  def show
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
