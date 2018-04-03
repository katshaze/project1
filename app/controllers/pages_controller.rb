class PagesController < ApplicationController
  def home
    @faves = @current_user.readings.where('readings.stars' => ["****", "*****"])
    @currently_reading = @current_user.readings.where('readings.reading')
    @to_read = @current_user.readings.where('readings.to_read')
    @read = @current_user.readings.where('readings.read')
  end
end
