module Admin
  class SponsorsController < ::SponsorsController
    def new
      @sponsor = Sponsor.new
    end

    def create
      @sponsor = Sponsor.create!(params[:sponsor])
      flash[:notice] = "#{@sponsor.name} was created."
      redirect_to :action => 'index'
    end
  end
end
