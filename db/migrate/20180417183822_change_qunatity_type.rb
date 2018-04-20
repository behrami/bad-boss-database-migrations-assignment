class ChangeQunatityType < ActiveRecord::Migration[5.0]
  def up
    # method to migration the column type forward
    change_column :parts, :quantity, :decimal
  end

  def down
    # method to rollback the column type to its previous state
    change_column :parts, :quantity, :integer
  end

end
