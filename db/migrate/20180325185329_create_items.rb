class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.string :slug
      t.string :metatitle
      t.string :metadescription
      t.string :metakeywords
      t.integer :price
      t.integer :publish
      t.integer :quantity

      t.timestamps
    end
    add_index :items, :slug, unique: true
  end
end
