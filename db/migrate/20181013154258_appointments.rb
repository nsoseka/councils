class Appointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.integer :new_born_id 
      t.integer :hospital_id
      t.date :date 
      t.text :purpose 
      t.boolean :kept, default: false

      t.timestamps
    end
  end
end
