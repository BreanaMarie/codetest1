class AttendancesController < ApplicationController
  def new
    @attendance = Attendance.new
    @talks = Talk.all
    render :new
  end

  def create
    attendance_params = params.require(:attendance).permit(:talk_id, :attendee_id)
    @attendance = Attendance.new(attendance_params)
    @attendance.save
  end

  def destroy
  end
end
