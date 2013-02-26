class ResolutionsController < ApplicationController
  def show
    @resolution = Resolution.find(params[:id])
  end
end
