class VotesController < ApplicationController
  
  def new
    @vote = Vote.new
  end

  def create
    @vote = Vote.create(params[:vote])
    if @vote.save!
      flash[:notice] = "New Resolution created!"
      redirect_to resolution_url(@vote.resolution_id)
    end
  end

end
