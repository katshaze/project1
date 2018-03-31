class ReadingsController < ApplicationController

  def index
    # @readings = Reading.all.order(:title)
    @readings = Reading.all
    @book = Book.find params[:book_id]
  end

  def show
    @reading = Reading.find params[:id]
  end

  def edit
    @book = Book.find params[:book_id]
    @reading = @current_user.readings.find params[:id]
  end

  def new
    @reading = Reading.new
  end

  def create
    @current_user.readings.create :book_id => params[:book_id]
    redirect_to book_readings_path
    # redirect_to root_path
  end

  def destroy
  end

  # private
  # def reading_params
  #   params.require(:reading).permit(:book_id, :user_id)
  # end

end
