class HomeController < ApplicationController
  def index
      @galleries = Gallery.all.order("RANDOM()").limit(8)
      respond_to do |format|
        format.html
        #format.json { render json: @galleries }
      end
  end
end

