class SearchesController < ApplicationController
  def show
    @stations = RailwayStation.all
  end

  def create
    @stations = RailwayStation.all
    @trains = Train.search(params[:start_station], params[:end_station])
    @start_station = RailwayStation.find(params[:start_station])
    @end_station = RailwayStation.find(params[:end_station])
    render :show
  end

  private

  def search_params
    params.require(:stations).permit(:start_station, :end_station)
  end
end

