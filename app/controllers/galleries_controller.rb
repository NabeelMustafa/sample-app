class GalleriesController < ApplicationController
    before_action :set_gallery, only: [:show, :edit, :update, :destroy]
    def index
        @galleries = Gallery.all.order("RANDOM()")
        respond_to do |format|
            format.html
            format.json { render json: @galleries }
        end
    end

    def new

    end

    def create
    end

    def show

    end

    private

    def set_gallery
        @gallery = Gallery.find(params[:id])
    end

end
