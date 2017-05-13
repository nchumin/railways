class RemoveCTypeFromCarriage < ActiveRecord::Migration[5.0]
  def change
    remove_column :carriages, :c_type, :string
  end
end
