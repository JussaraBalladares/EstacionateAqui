class AddDimensionColumnToEstacionamientos < ActiveRecord::Migration[5.1]
  def change
    add_column :estacionamientos, :dimension, :string
  end
end
