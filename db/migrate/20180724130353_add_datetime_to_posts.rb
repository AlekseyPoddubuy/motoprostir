class AddDatetimeToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :datetime, :datetime
  end
end
