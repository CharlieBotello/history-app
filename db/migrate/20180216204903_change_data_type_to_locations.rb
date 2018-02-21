class ChangeDataTypeToLocations < ActiveRecord::Migration[5.1]
  def change
    change_column :locations, :latitude, :string
  end
end
