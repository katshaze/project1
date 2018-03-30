class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :fetch_user # any time any controller does any action for us, it will run this code, i.e. set up a current user for us

  private
  def fetch_user
    @current_user = User.find_by :id => session[:user_id] if session[:user_id].present?
    session[:user_id] = nil unless @current_user.present? # This prevents horrors if I reseed.
  end
end
