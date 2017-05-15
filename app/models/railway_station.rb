class RailwayStation < ApplicationRecord
  has_many :trains, foreign_key: :current_station_id
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes

  validates :name, presence: true

  scope :ordered, -> { select('railway_stations.*, railway_stations_routes.position').joins(:railway_stations_routes).order('railway_stations_routes.position').uniq }

  def update_position(route, position)
    station_route = station_route(route)
    station_route.update(position: position) if station_route
  end

  def position_in(route)
    station_route(route).try(:position)
  end

  def update_time(route, arrival, departure)
    station_route = station_route(route)
    station_route.update(arrival_time: arrival, departure_time: departure) if station_route
  end

  def time(route, type_time)
    time = station_route(route).try(type_time)
    time.strftime("%H:%M") if time
  end

  protected

  def station_route(route)
    @station_route ||= railway_stations_routes.where(route: route).first
  end
end
