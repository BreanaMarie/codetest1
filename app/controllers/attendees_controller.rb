class AttendeesController < ApplicationController
  def show
  end

  def new
    @attendee = Attendee.new
    render :new
  end

  def create
    attendee_params = params.require(:attendee).permit(:first_name, :last_name, :passion)
    @attendee = Attendee.new(attendee_params)
    if @attendee.save
      redirect_to @attendee
    else
      render :new
    end
  end
end
