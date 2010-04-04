class SourceCommitsController < ApplicationController

  before_filter :find_source_commit

  SOURCE_COMMITS_PER_PAGE = 20

  def index
    SourceCommit.fetch_commits
    @source_commits = SourceCommit.paginate(:page => params[:page], :per_page => SOURCE_COMMITS_PER_PAGE)
    respond_to do |format|
      format.html
      format.xml  { render :xml => @source_commits }
    end
  end

  def show
    respond_to do |format|
      format.html
      format.xml  { render :xml => @source_commit }
    end
  end

  private

  def find_source_commit
    @source_commit = SourceCommit.find(params[:id]) if params[:id]
  end

end
