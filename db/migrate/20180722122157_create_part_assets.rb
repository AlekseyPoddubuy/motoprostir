class CreatePartAssets < ActiveRecord::Migration[5.1]
  def change
    create_table :part_assets do |t|
      t.references :part, foreign_key: true

      t.timestamps
    end
  end
end
