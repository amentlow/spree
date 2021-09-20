class AddMetadataToSpreeLineItems < ActiveRecord::Migration[5.2]
  def change
    add_column :spree_line_items, :public_metadata, :text
    add_column :spree_line_items, :private_metadata, :text
  end
end
