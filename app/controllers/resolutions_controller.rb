class ResolutionsController < ApplicationController
  def new
    @resolution = Resolution.new
  end

  def create
    @resolution = Resolution.new(params[:resolution])
    if @resolution.save
      redirect_to resolution_path(@resolution)
    else
      render 'new'
    end
  end
  def index
    @resolutions = Resolution.all
  end

  def show
    @resolution = Resolution.find(params[:id])
  end
end
