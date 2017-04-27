class CreateTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.string :number
      t.belongs_to :user, index: true
      t.belongs_to :train, index: true
      t.belongs_to :railway_station, :start_station, index: false
      t.belongs_to :railway_station, :end_station, index: false

      t.timestamps
    end
  end
end
