class AddAttachmentImageToPartAssets < ActiveRecord::Migration[5.1]
  def self.up
    change_table :part_assets do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :part_assets, :image
  end
end
