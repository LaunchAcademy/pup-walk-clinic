class CreateWalks < ActiveRecord::Migration[5.2]
  def change
    create_table :walks do |t|
      t.belongs_to :pup, null: false
      t.belongs_to :walker, null: false
      t.text :day, null: false

      t.timestamps
    end
  end
end
