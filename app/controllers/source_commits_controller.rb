class SourceCommitsController < ApplicationController

  before_filter :find_source_commit

  SOURCE_COMMITS_PER_PAGE = 20

  def create
    @source_commit = SourceCommit.new(params[:source_commit])
    respond_to do |format|
      if @source_commit.save
        flash[:notice] = 'SourceCommit was successfully created.'
        format.html { redirect_to @source_commit }
        format.xml  { render :xml => @source_commit, :status => :created, :location => @source_commit }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @source_commit.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    respond_to do |format|
      if @source_commit.destroy
        flash[:notice] = 'SourceCommit was successfully destroyed.'        
        format.html { redirect_to source_commits_path }
        format.xml  { head :ok }
      else
        flash[:error] = 'SourceCommit could not be destroyed.'
        format.html { redirect_to @source_commit }
        format.xml  { head :unprocessable_entity }
      end
    end
  end

  def index
    SourceCommit.fetch_commits
    @source_commits = SourceCommit.paginate(:page => params[:page], :per_page => SOURCE_COMMITS_PER_PAGE)
    respond_to do |format|
      format.html
      format.xml  { render :xml => @source_commits }
    end
  end

  def edit
  end

  def new
    @source_commit = SourceCommit.new
    respond_to do |format|
      format.html
      format.xml  { render :xml => @source_commit }
    end
  end

  def show
    respond_to do |format|
      format.html
      format.xml  { render :xml => @source_commit }
    end
  end

  def update
    respond_to do |format|
      if @source_commit.update_attributes(params[:source_commit])
        flash[:notice] = 'SourceCommit was successfully updated.'
        format.html { redirect_to @source_commit }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @source_commit.errors, :status => :unprocessable_entity }
      end
    end
  end

  private

  def find_source_commit
    @source_commit = SourceCommit.find(params[:id]) if params[:id]
  end

end
