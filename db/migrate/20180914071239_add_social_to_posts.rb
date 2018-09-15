class AddSocialToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :metatitle, :string
    add_column :posts, :metakeywords, :string
    add_column :posts, :metadescription, :string
  end
end
