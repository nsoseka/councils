class Divisions < ActiveRecord::Migration[5.2]
  def change
    create_table :divisions do |t|
      t.text :name
      t.text :capital
      t.text :code 
      t.integer :area 
      t.integer :population
      t.integer :administrative_region_id

      t.timestamps
    end
  end
end
