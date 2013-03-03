class VotesController < ApplicationController
  respond_to :html, :js 

  def new
    @vote = Vote.new
  end

  def create
    @vote = Vote.new(params[:vote])

    @old_vote = Vote.where(:member_id => @vote.member_id, :resolution_id => 
       @vote.resolution_id).first
    unless @old_vote.nil?
      @old_vote.destroy
    end

    @vote_types = VoteType.all
    @resolution = Resolution.find(@vote.resolution_id)
    p "Hello! #{@vote.member_id}"
    if @vote.save!
      flash[:notice] = "New vote created!"
    end
    respond_with(@vote_types, :location => resolution_url(@vote.resolution_id))
  end

end
