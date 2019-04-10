class UpdateWalkAddIndex < ActiveRecord::Migration[5.2]
  def change
    add_index :walks, [:pup_id, :day], unique: true
  end
end
