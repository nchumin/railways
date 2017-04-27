class AddCurrentStationToTrain < ActiveRecord::Migration[5.0]
  def change
    add_reference :trains, :current_station
  end
end
