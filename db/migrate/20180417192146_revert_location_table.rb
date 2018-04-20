class RevertLocationTable < ActiveRecord::Migration[5.0]
  def up
    # method to migration the column type forward
    add_column :locations, :name, :string
    add_column :locations, :description, :string
    remove_column :locations, :city
    remove_column :locations, :weather
  end

  def down
    # method to rollback the column type to its previous state
    remove_column :locations, :name
    remove_column :locations, :description
    add_column :locations, :city, :string
    add_column :locations, :weather, :decimal

  end
end
