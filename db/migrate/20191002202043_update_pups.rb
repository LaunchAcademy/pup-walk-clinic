class UpdatePups < ActiveRecord::Migration[5.2]
  def up
    add_column :pups, :breed, :text, null: false, default:"unknown"
  end
  def down
    remove_column :pups, :breed
  end
end
