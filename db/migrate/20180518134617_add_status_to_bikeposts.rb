class AddStatusToBikeposts < ActiveRecord::Migration[5.1]
  def change
    add_column :bikeposts, :status, :integer
  end
end
