class AddIndexNumberToRailwayStationsRoutes < ActiveRecord::Migration[5.0]
  def change
    add_column :railway_stations_routes, :index_number, :integer
  end
end
