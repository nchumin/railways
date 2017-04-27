class AddRouteToTrain < ActiveRecord::Migration[5.0]
  def change
    change_table :trains do |t|
      t.belongs_to :route, index: true
    end
  end
end
