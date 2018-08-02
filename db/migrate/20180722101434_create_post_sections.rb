class CreatePostSections < ActiveRecord::Migration[5.1]
  def change
    create_table :post_sections do |t|
      t.string :post_id
      t.string :section_id

      t.timestamps
    end
  end
end
