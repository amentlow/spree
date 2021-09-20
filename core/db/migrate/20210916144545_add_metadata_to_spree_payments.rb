class AddMetadataToSpreePayments < ActiveRecord::Migration[5.2]
  def change
    add_column :spree_payments, :public_metadata, :text
    add_column :spree_payments, :private_metadata, :text
  end
end
