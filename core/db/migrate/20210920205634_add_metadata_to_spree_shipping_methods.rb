class AddMetadataToSpreeShippingMethods < ActiveRecord::Migration[6.1]
  def change
    add_column :spree_shipping_methods, :public_metadata, :text
    add_column :spree_shipping_methods, :private_metadata, :text
  end
end
