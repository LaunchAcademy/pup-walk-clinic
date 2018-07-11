class AddRelationsToWalks < ActiveRecord::Migration[5.2]
  def change
    change_table :walks do |t|
      t.belongs_to :pup, null: false
      t.belongs_to :walker, null: false
    end
  end
end
