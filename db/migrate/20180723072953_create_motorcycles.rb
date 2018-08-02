class CreateMotorcycles < ActiveRecord::Migration[5.1]
  def change
    create_table :motorcycles do |t|
      t.string :title
      t.string :slug

      t.timestamps
    end
    add_index :motorcycles, :slug, unique: true
  end
end
