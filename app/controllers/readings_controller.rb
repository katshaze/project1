class ReadingsController < ApplicationController

  def index
    # @readings = Reading.all.order(:title)
    @readings = Reading.all
    @book = Book.find params[:book_id]
  end

  def show
    @reading = @current_user.readings.find params[:id]
    raise :hell
  end

  def new
    @reading = Reading.new
  end

  def create
    @current_user.readings.create :book_id => params[:book_id]
    redirect_to book_readings_path
    # redirect_to root_path
  end

  def edit
    @book = Book.find params[:book_id]
    @reading = @current_user.readings.find params[:id]
  end

  def update
    raise :hell
    book = Book.find params[:book_id]
    # @current_user.readings.update :book_id => params[:book_id]
    @current_user.readings.update reading_params
    raise :hell
    redirect_to root_path
  end

  def destroy
  end

  private
  def reading_params
    params.require(:reading).permit(:book_id, :user_id, :stars, :to_read, :reading, :read)
  end

end
