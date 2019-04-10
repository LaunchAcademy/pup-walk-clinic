class UpdateWalkersRequireName < ActiveRecord::Migration[5.2]
  def up
    change_column_null :walkers, :name, false
  end
  def down
    change_column_null :walkers, :name, true
  end
end
