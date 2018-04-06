class ReadingsController < ApplicationController

  def index
    @book = Book.find params[:book_id]
    @other_lovers = User.joins(:readings).where('readings.book_id' => @book.id).where('readings.stars' => ["****", "*****"])
  end

  def new
    @book = Book.find params[:book_id]
    @reading = @current_user.readings.new
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
    reading = @current_user.readings.find params[:id]
    reading.update :book_id => params[:book_id]
    reading.update reading_params
    redirect_to root_path
  end

  def destroy
    book = Book.find params[:book_id]
    reading = @current_user.readings.find params[:id]
    reading.destroy
    redirect_to root_path
  end

  private
  def reading_params
    params.require(:reading).permit(:book_id, :user_id, :stars, :to_read, :reading, :read)
  end

end
