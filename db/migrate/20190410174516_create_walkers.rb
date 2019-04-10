class CreateWalkers < ActiveRecord::Migration[5.2]
  def change
    create_table :walkers do |t|
      t.string :name

      t.timestamps
    end
    add_index :walkers, :name, unique: true
  end
end
