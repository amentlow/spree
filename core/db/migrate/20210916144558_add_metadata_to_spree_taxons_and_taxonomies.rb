class AddMetadataToSpreeTaxonsAndTaxonomies < ActiveRecord::Migration[5.2]
  def change
    add_column :spree_taxons, :public_metadata, :text
    add_column :spree_taxons, :private_metadata, :text

    add_column :spree_taxonomies, :public_metadata, :text
    add_column :spree_taxonomies, :private_metadata, :text
  end
end
