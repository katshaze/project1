class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
    # session[:message] = 'HELLO THERE'
  end

  def create
    @user = User.new user_params # instead of User.create, which immediately tries to save the user into the db, and instead of user it's @user since we need the params to then test it out...(?)
    if @user.save # i.e. if it returns something truthy
      flash[:notice] = "Success! Login to start tracking books."
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    user = User.find params[:id]
    user.update user_params
    redirect_to root_path
  end

  def destroy
    user = User.find params[:id]
    session[:user_id] = nil
    redirect_to new_user_path
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

end
