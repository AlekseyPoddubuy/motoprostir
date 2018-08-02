class CreateSections < ActiveRecord::Migration[5.1]
  def change
    create_table :sections do |t|
      t.string :title
      t.string :slug

      t.timestamps
    end
    add_index :sections, :slug, unique: true
  end
end
