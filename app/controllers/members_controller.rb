class MembersController < ApplicationController
  def new
    @member = Member.new
  end

  def create
    @member = Member.new(params[:member])
    if @member.save
      redirect_to member_path(@member)
    else
      puts @member.errors.full_messages
      render 'new'
    end
  end

  def show
    @member = Member.find(params[:id])
  end

  def index
    @members = Member.order('name')
  end
end
