class AddOrderToLineProduct < ActiveRecord::Migration[5.1]
  def change
    add_reference :line_products, :order, foreign_key: true
  end
end
