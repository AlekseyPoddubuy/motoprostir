class CreateBikeposts < ActiveRecord::Migration[5.1]
  def change
    create_table :bikeposts do |t|
      t.string :title
      t.text :address
      t.text :description
      t.string :oblast
      t.string :city

      t.timestamps
    end
  end
end
