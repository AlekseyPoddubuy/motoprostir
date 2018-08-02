class CreateParts < ActiveRecord::Migration[5.1]
  def change
    create_table :parts do |t|
      t.string :title
      t.string :description
      t.integer :price
      t.string :delivery

      t.timestamps
    end
  end
end
