class HomeController < ApplicationController
  before_filter :set_current_tab

  def index
    render :layout => "application"
  end

  private

  def set_current_tab
    @current_tab = 'home'
  end
end
