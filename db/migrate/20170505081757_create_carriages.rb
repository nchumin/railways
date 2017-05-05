class CreateCarriages < ActiveRecord::Migration[5.0]
  def change
    create_table :carriages do |t|
      t.integer "number"
      t.integer "top_seats"
      t.integer "bottom_seats"
      t.integer "train_id"
      t.string "c_type"

      t.timestamps
    end
  end
end
