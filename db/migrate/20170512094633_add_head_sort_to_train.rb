class AddHeadSortToTrain < ActiveRecord::Migration[5.0]
  def change
    add_column :trains, :head_sort, :boolean
  end
end
