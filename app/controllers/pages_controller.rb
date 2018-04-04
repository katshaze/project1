class PagesController < ApplicationController
  def home
    # raise :hell
    if @current_user.present?
      @faves = @current_user.readings.where('readings.stars' => ["****", "*****"])
      @currently_reading = @current_user.readings.where('readings.reading')
      @to_read = @current_user.readings.where('readings.to_read')
      @read = @current_user.readings.where('readings.read')
    end
  end
end
