class CreateRailwayStationsAndRoutes < ActiveRecord::Migration[5.0]
  def change
    create_table :railway_stations_and_routes, id: false do |t|
      t.belongs_to :railway_station, index: true
      t.belongs_to :route, index: true
    end
  end
end
