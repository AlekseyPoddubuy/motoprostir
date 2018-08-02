class AddBodyToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :body, :text
  end
end
