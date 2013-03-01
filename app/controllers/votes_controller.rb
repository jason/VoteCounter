class VotesController < ApplicationController
  respond_to :html, :js 

  def new
    @vote = Vote.new
  end

  def create
    @vote = Vote.create(params[:vote])
    @vote_types = VoteType.all
    @resolution = Resolution.find(@vote.resolution_id)
    p "Hello! #{@vote.member_id}"
    if Vote.where(:member_id => @vote.member_id, :resolution_id => @vote.resolution_id).first.destroy
    end
    if @vote.save!
      flash[:notice] = "New Resolution created!"
    end
    respond_with(@vote_types, :location => resolution_url(@vote.resolution_id))
  end

end
