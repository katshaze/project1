class ReadingsController < ApplicationController

  def index
    @readings = Reading.all.order(:title)
  end

  def show
    @reading = Reading.find params[:id]
  end

  def edit
  end

  def new

  end

  def create
    @reading = Reading.new
    @reading.book_id = params[:book_id]
    @reading.user_id = @current_user
    raise :hell
    @reading = Reading.create reading_params
    redirect_to readings_path
  end

  private
  def reading_params
    params.require(:reading).permit(:book_id, :user_id)
  end

end
