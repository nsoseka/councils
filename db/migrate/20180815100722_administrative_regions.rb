class AdministrativeRegions < ActiveRecord::Migration[5.2]
  def change
    create_table :administrative_regions do |t|
      t.text :name
      t.text :capital
      t.text :code 
      t.integer :area 
      t.integer :population

      t.timestamps
    end
  end
end

