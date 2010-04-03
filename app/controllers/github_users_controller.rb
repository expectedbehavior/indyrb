class GithubUsersController < ApplicationController

  before_filter :find_github_user

  GITHUB_USERS_PER_PAGE = 20

  def create
    @github_user = GithubUser.new(params[:github_user])
    respond_to do |format|
      if @github_user.save
        flash[:notice] = 'GithubUser was successfully created.'
        format.html { redirect_to @github_user }
        format.xml  { render :xml => @github_user, :status => :created, :location => @github_user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @github_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    respond_to do |format|
      if @github_user.destroy
        flash[:notice] = 'GithubUser was successfully destroyed.'        
        format.html { redirect_to github_users_path }
        format.xml  { head :ok }
      else
        flash[:error] = 'GithubUser could not be destroyed.'
        format.html { redirect_to @github_user }
        format.xml  { head :unprocessable_entity }
      end
    end
  end

  def index
    @github_users = GithubUser.paginate(:page => params[:page], :per_page => GITHUB_USERS_PER_PAGE)
    respond_to do |format|
      format.html
      format.xml  { render :xml => @github_users }
    end
  end

  def edit
  end

  def new
    @github_user = GithubUser.new
    respond_to do |format|
      format.html
      format.xml  { render :xml => @github_user }
    end
  end

  def show
    respond_to do |format|
      format.html
      format.xml  { render :xml => @github_user }
    end
  end

  def update
    respond_to do |format|
      if @github_user.update_attributes(params[:github_user])
        flash[:notice] = 'GithubUser was successfully updated.'
        format.html { redirect_to @github_user }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @github_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  private

  def find_github_user
    @github_user = GithubUser.find(params[:id]) if params[:id]
  end

end