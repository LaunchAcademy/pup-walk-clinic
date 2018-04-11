class CreateWalks < ActiveRecord::Migration[5.1]
  def change
    create_table :walks do |t|
      t.belongs_to :floof
      t.belongs_to :walker

      t.string :day, null: false
    end
  end
end
