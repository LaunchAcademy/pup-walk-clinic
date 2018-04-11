class AddFloofsIndex < ActiveRecord::Migration[5.1]
  def change
    add_index :floofs, :name, unique: true
  end
end
