class ChangeLocationTable < ActiveRecord::Migration[5.0]
    def up
      # method to migration the column type forward
      remove_column :locations, :name
      remove_column :locations, :description
      add_column :locations, :city, :string
      add_column :locations, :weather, :decimal
    end

    def down
      # method to rollback the column type to its previous state
      add_column :locations, :name, :string
      add_column :locations, :description, :string
      remove_column :locations, :city
      remove_column :locations, :weather
    end

end
