class ReadingsController < ApplicationController

  def index
    @book = Book.find params[:book_id]
  end

  def new
    @book = Book.find params[:book_id]
    @reading = @current_user.readings.new
    # @reading = @current_user.readings.find params[:id]
  end

  def create
    book = Book.find params[:book_id]
    reading = @current_user.readings.create :book_id => params[:book_id]
    reading.update reading_params
    redirect_to root_path
  end

  def edit
    @book = Book.find params[:book_id]
    @reading = @current_user.readings.find params[:id]
  end

  def update
    book = Book.find params[:book_id]
    # @current_user.readings.update :book_id => params[:book_id]
    # reading.update reading_params
    @current_user.readings.update reading_params
    redirect_to root_path
  end

  def destroy
  end

  private
  def reading_params
    params.require(:reading).permit(:book_id, :user_id, :stars, :to_read, :reading, :read)
  end

end
