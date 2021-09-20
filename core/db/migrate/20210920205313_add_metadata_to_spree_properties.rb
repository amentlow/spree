class AddMetadataToSpreeProperties < ActiveRecord::Migration[6.1]
  def change
    add_column :spree_properties, :public_metadata, :text
    add_column :spree_properties, :private_metadata, :text
  end
end
