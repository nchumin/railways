class CreateTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.belongs_to :user, index: true
      t.belongs_to :train, index: true

      t.timestamps
    end

    add_reference :tickets, :start_station, index: true
    add_reference :tickets, :end_station, index: true
  end
end
