class TalksController < ApplicationController
  def index
    @talks = Talk.all.order(:date)
    @attendances = Attendance.all
  end

  def show
    @talk = Talk.find_by_id(params[:id])
    @attendances = Attendance.all
  end

  def new
    @talk = Talk.new
    render :new
  end

  def create
    talk_params = params.require(:talk).permit(:title, :host, :date, :description)
    @talk = Talk.new(talk_params)
    if @talk.save
      redirect_to @talk
    else
      render :new
    end
  end
end
