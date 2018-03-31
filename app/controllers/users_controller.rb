class UsersController < ApplicationController
  def new
    @user = User.new
    session[:message] = 'HELLO THERE'
  end

  def create
    @user = User.new user_params # instead of User.create, which immediately tries to save the user into the db, and instead of user it's @user since we need the params to then test it out...(?)
    if @user.save # i.e. if it returns something truthy
      redirect_to root_path # it worked!
    else
      render :new
    end
  end

  def show

  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

end
