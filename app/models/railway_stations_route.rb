class RailwayStationsRoute < ApplicationRecord
  belongs_to :railway_station
  belongs_to :route

  validates :index_number, uniqueness: { scope: :route_id }
end
