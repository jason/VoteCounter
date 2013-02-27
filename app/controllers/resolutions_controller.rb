class ResolutionsController < ApplicationController
  respond_to :html, :js

  def new
    @resolution = Resolution.new
  end

  def create
    @resolution = Resolution.new(params[:resolution])
    respond_with(@resolution)
  end
  def index
    @resolutions = Resolution.all
  end

  def show
    @resolution = Resolution.find(params[:id])
  end
end
