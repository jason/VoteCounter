class MeetingsController < ApplicationController
  respond_to :html, :js

  def new
    @meeting = Meeting.new
  end

  def create
    @meeting = Meeting.create!(params[:meeting])
    respond_with(@meeting, :location => meetings_url)
  end

  def index
    @meetings = Meeting.order('meeting_date DESC')
  end

  def show
    @meeting = Meeting.find(params[:id])
  end

end
