class AddCostColumnToLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :cost_of_admission, :integer
  end
end
