class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :surname
      t.text :body
      t.integer :status
      t.integer :item_id

      t.timestamps
    end
  end
end
