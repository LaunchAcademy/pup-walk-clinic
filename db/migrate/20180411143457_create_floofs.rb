class CreateFloofs < ActiveRecord::Migration[5.1]
  def change
    create_table :floofs do |t|
      t.string :name, null: false
    end
  end
end
