class AddIndexToWalkers < ActiveRecord::Migration[5.2]
  def change
    add_index :walkers, :name, unique: true
  end
end
