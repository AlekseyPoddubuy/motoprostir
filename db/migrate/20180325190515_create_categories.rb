class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :title
      t.string :body
      t.string :metatitle
      t.string :metdescription
      t.string :metakeywords
      t.string :slug

      t.timestamps
    end
    add_index :categories, :slug, unique: true
  end
end
