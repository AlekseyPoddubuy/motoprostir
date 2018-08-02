class AddBrandIdToParts < ActiveRecord::Migration[5.1]
  def change
    add_column :parts, :brand_id, :integer
  end
end
