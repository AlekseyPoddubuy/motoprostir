class AddMotorcycleIdToParts < ActiveRecord::Migration[5.1]
  def change
    add_column :parts, :motorcycle_id, :integer
  end
end
