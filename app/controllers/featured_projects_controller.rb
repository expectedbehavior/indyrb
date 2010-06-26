class FeaturedProjectsController < ApplicationController
  
  def index
    @featured_projects = FeaturedProject.all.paginate(:page => params[:page], :per_page => 20)
  end
  
  def show
    @featured_project = FeaturedProject.find(params[:id])
  end
  
end
