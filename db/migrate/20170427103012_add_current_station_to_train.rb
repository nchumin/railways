class AddCurrentStationToTrain < ActiveRecord::Migration[5.0]
  def change
    change_table :trains do |t|
      t.belongs_to :railway_station, :current_station, index: true
    end
  end
end
