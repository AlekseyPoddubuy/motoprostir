class CreateBrands < ActiveRecord::Migration[5.1]
  def change
    create_table :brands do |t|
      t.string :title
      t.string :slug

      t.timestamps
    end
    add_index :brands, :slug, unique: true
  end
end
