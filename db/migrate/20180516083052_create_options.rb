class CreateOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :options do |t|
      t.string :optable_type
      t.integer :optable_id
      t.string :name
      t.integer :value

      t.timestamps
    end
  end
end
