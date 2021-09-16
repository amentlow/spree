class AddMetadataToSpreeAssets < ActiveRecord::Migration[5.2]
  def change
    add_column :spree_assets, :public_metadata, :text
    add_column :spree_assets, :private_metadata, :text
  end
end
