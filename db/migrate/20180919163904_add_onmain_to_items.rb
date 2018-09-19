class AddOnmainToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :onmain, :boolean
  end
end
