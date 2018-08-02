class AddQuantityToLineProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :line_products, :quantity, :integer, default: 1
  end
end
