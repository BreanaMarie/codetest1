class TalksController < ApplicationController
  def index
    @talks = Talk.all.order(:date)
  end

  def show
  end

  def new
    @talk = Talk.new
    render :new
  end

  def create
    talk_params = params.require(:talk).permit(:title, :host, :date, :description)
    @talk = Talk.new(talk_params)
    render :new
  end
end
