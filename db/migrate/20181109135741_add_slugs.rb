class AddSlugs < ActiveRecord::Migration[5.2]
  def change
    add_column :new_borns, :slug, :string
    add_column :deceaseds, :slug, :string
    add_column :agents, :slug, :string
  end
end
