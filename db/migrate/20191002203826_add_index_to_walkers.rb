class AddIndexToWalkers < ActiveRecord::Migration[5.2]
  def up
    add_index :walkers, :name, unique: true
  end
  def down
    remove_index :walkers, :name
  end
end
