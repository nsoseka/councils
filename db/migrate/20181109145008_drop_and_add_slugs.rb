class DropAndAddSlugs < ActiveRecord::Migration[5.2]
  def change
    remove_column :agents, :slug
    add_column :marriages, :slug, :string 
    add_column :births, :slug, :string 
    add_column :deaths, :slug, :string 
  end
end
