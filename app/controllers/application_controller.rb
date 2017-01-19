class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
#   helper_method :current_user, :logged_in?
#
# def current_user
#   @current_user ||= User.find_by_id(session[:user])
# end
#
#  def logged_in?
#    current_user != nil
#  end
# The above helper methods will be relevant later in the context
# of sessions and when we want only the current user to be
# able to edit his own profile
end
