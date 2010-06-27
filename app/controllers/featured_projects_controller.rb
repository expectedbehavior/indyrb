class FeaturedProjectsController < ApplicationController
  
  def index
    @featured_projects = FeaturedProject.all.paginate(:page => params[:page], :per_page => 20)
  end
  
  def show
    @featured_project = FeaturedProject.find(params[:id])
  end

  private
  
  def set_current_tab
    @current_tab = 'featured'
  end
  
end
