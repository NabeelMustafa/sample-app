class SuppliersController < ApplicationController
  def index
      @suppliers = Supplier.all
      respond_to do |format|
        format.html
        format.json { render json: @suppliers }
      end

  end
end
