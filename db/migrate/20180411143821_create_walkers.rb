class CreateWalkers < ActiveRecord::Migration[5.1]
  def change
    create_table :walkers do |t|
      t.string :name, null: false
      t.index :name, unique: true
    end
  end
end
