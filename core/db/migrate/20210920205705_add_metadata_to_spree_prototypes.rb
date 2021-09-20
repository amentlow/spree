class AddMetadataToSpreePrototypes < ActiveRecord::Migration[6.1]
  def change
    add_column :spree_prototypes, :public_metadata, :text
    add_column :spree_prototypes, :private_metadata, :text
  end
end
