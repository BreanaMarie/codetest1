class AttendeesController < ApplicationController
  def show
  end

  def new
    @attendee = Attendee.new
    @talks = Talk.all
    @attendances = Attendance.new
    render :new
  end

  def create
    attendee_params = params.require(:attendee).permit(:first_name, :last_name, :passion)
    @attendee = Attendee.new(attendee_params)
    @talks = Talk.all

    if @attendee.save
      create_attend @attendee.id, @talks_id
      redirect_to @attendee
    else
      render :new
    end
  end

  def create_attend attendee_id, talk_id
    Attendance.create(attendee_id: attendee_id, talk_id: talk_id)

  end
end
