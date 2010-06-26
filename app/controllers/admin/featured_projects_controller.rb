class Admin::FeaturedProjectsController < ApplicationController

  before_filter :find_featured_project

  FEATURED_PROJECTS_PER_PAGE = 20

  def create
    @featured_project = FeaturedProject.new(params[:featured_project])
    respond_to do |format|
      if @featured_project.save
        flash[:notice] = 'FeaturedProject was successfully created.'
        format.html { redirect_to [:admin, @featured_project] }
        format.xml  { render :xml => @featured_project, :status => :created, :location => @featured_project }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @featured_project.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    respond_to do |format|
      if @featured_project.destroy
        flash[:notice] = 'FeaturedProject was successfully destroyed.'        
        format.html { redirect_to admin_featured_projects_path }
        format.xml  { head :ok }
      else
        flash[:error] = 'FeaturedProject could not be destroyed.'
        format.html { redirect_to [:admin, @featured_project] }
        format.xml  { head :unprocessable_entity }
      end
    end
  end

  def index
    @featured_projects = FeaturedProject.paginate(:page => params[:page], :per_page => FEATURED_PROJECTS_PER_PAGE)
    respond_to do |format|
      format.html
      format.xml  { render :xml => @featured_projects }
    end
  end

  def edit
  end

  def new
    @featured_project = FeaturedProject.new
    respond_to do |format|
      format.html
      format.xml  { render :xml => @featured_project }
    end
  end

  def show
    respond_to do |format|
      format.html
      format.xml  { render :xml => @featured_project }
    end
  end

  def update
    respond_to do |format|
      if @featured_project.update_attributes(params[:featured_project])
        flash[:notice] = 'FeaturedProject was successfully updated.'
        format.html { redirect_to [:admin, @featured_project] }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @featured_project.errors, :status => :unprocessable_entity }
      end
    end
  end

  private

  def find_featured_project
    @featured_project = FeaturedProject.find(params[:id]) if params[:id]
  end

end
