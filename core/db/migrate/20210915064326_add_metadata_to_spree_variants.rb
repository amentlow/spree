class AddMetadataToSpreeVariants < ActiveRecord::Migration[5.2]
  def change
    add_column :spree_variants, :public_metadata, :text
    add_column :spree_variants, :private_metadata, :text
  end
end
