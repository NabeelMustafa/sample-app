class InfrastructuresController < ApplicationController

  def index
      @infrastructures = Infrastructure.all
      respond_to do |format|
        format.html
        format.json { render json: @infrastructures }
      end
  end
end
