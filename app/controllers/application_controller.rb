class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  before_action :set_current_user

  def set_current_user
    @current_user = User.find_by(id: session[:user_id])
  end

  def authenticate_user
    if @current_user == nil
      flash[:notice] = "Logging in is necessary for viewing posts and new postings. If you do not register your account, please sign in first."
      redirect_to new_session_path
    end
  end
end
