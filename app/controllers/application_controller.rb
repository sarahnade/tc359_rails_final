class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

private

  def current_user
    User.find_by(id: session[:user_id])
  end
  helper_method :current_user

  def user_signed_in?
    !!current_user
  end
  helper_method :user_signed_in?

  def only_allow_signed_in_users
    unless user_signed_in?
      redirect_to sign_in_url, notice: 'You must sign in to access this part of the app.'
    end
  end

end
