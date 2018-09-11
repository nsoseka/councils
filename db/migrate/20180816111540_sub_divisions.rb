class SubDivisions < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_divisions do |t|
      t.text :name
      t.text :capital
      t.text :code 
      t.integer :area 
      t.integer :population
      t.integer :administrative_region_id
      t.integer :division_id

      t.timestamps
    end
  end
end
