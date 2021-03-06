# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  before_filter :set_current_tab
  helper_method :current_user_session, :current_user
  include ExceptionNotifiable
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  layout proc{ |c| c.request.xhr? ? false : "application" }
  
  # Scrub sensitive parameters from your log
  filter_parameter_logging :password

  private

  helper_method :testing?
  def testing?
    !%W(production development).include?(Rails.env)
  end
 
  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end
 
  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.record
  end

  def require_user
    unless current_user
      store_location
      flash[:notice] = "You must be logged in to access this page"
      redirect_to new_user_session_url
    end
  end

  def require_no_user
    if current_user
      store_location
      flash[:notice] = "You must be logged out to access this page"
      redirect_to account_url
    end
  end
  
  def require_admin
    unless current_user.try(:admin?)
      flash[:notice] = "You must be an administrator to access this page"
      redirect_to root_path
    end
  end
  
  def store_location
    session[:return_to] = request.request_uri
  end
  
  def redirect_back_or_default(default)
    redirect_to(session[:return_to] || default)
    session[:return_to] = nil
  end

  def set_current_tab
    @current_tab = 'home'
  end
  
end
