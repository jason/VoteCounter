class MeetingsController < ApplicationController
  def index
    @meetings = Meeting.order('meeting_date DESC')
  end

  def show
    @meeting = Meeting.find(params[:id])
  end

end
