class AddIndexToPups < ActiveRecord::Migration[5.2]
  def change
    add_index :pups, :name, unique: true
  end
end
