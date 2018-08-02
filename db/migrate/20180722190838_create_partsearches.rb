class CreatePartsearches < ActiveRecord::Migration[5.1]
  def change
    create_table :partsearches do |t|
      t.integer :brand_id
      t.integer :motorcycle_id
      t.integer :detail_id

      t.timestamps
    end
  end
end
