class SearchesController < ApplicationController
  before_action :get_stations, only: [:show, :create]

  def show
  end

  def create
    @trains = Train.search(params[:start_station], params[:end_station])
    @start_station = RailwayStation.find(params[:start_station])
    @end_station = RailwayStation.find(params[:end_station])
    render :show
  end

  private

  def get_stations
    @stations = RailwayStation.all
  end

  def search_params
    params.require(:stations).permit(:start_station, :end_station)
  end
end

