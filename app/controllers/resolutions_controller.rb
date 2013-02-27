class ResolutionsController < ApplicationController
  respond_to :html, :js

  def new
    @meeting = Meeting.find(params[:meeting_id])
    @resolution = @meeting.resolutions.build
  end

  def create
    @meeting = Meeting.find(params[:meeting_id])
    @resolution = @meeting.resolutions.build(params[:resolution])
      if @resolution.save!
        flash[:notice] = "New Resolution created!"
      end
    respond_with(@resolution, :location => meeting_resolutions_url(@meeting))
  end

  def index
    @meeting = Meeting.find(params[:meeting_id])
    @resolutions = @meeting.resolutions
  end

  def show
    @resolution = Resolution.find(params[:id])
    @members = Member.all
    @votes = @resolution.votes.build
  end

end
