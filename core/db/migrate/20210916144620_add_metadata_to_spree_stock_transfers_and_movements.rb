class AddMetadataToSpreeStockTransfersAndMovements < ActiveRecord::Migration[5.2]
  def change
    add_column :spree_stock_transfers, :public_metadata, :text
    add_column :spree_stock_transfers, :private_metadata, :text
    
    add_column :spree_stock_movements, :public_metadata, :text
    add_column :spree_stock_movements, :private_metadata, :text
  end
end
