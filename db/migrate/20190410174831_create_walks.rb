class CreateWalks < ActiveRecord::Migration[5.2]
  def change
    create_table :walks do |t|
      t.string :day, null:false
      t.belongs_to :pup
      t.belongs_to :walker

      t.timestamps
    end
  end
end
