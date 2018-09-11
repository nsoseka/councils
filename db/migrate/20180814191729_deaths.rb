class Deaths < ActiveRecord::Migration[5.2]
  def change
     create_table :deaths do |t|
      t.integer :council_id 
      t.text :surname 
      t.text :given_name
      t.date :date_born
      t.text :place_born
      t.text :mr 
      t.date :date_died
      t.text :place_died 
      t.text :sex
      t.text :marital_status
      t.text :occupation
      t.text :residence
      t.text :father
      t.text :mother 
      t.date :date_drawn
      t.text :declaration
      t.text :d_name 
      t.text :d_occupation
      t.text :d_capacity
      t.text :fw_name
      t.text :fw_occupation
      t.text :residence
      t.text :sw_name 
      t.text :sw_occupation
      t.text :sw_residence
      t.text :attestator
      t.text :registrar
      t.text :secretary
      t.date :date_made
      t.timestamps
    end
  end
end
