class Births < ActiveRecord::Migration[5.2]
  def change
    create_table :births do |t|
      t.integer :council_id
      t.text :sub_center
      t.text :certificate_number
      t.text :surname
      t.text :given_name 
      t.date :date_born
      t.text :place_born
      t.text :sex 
      t.text :father
      t.text :father_pb
      t.date :father_db
      t.text :father_res
      t.text :father_job
      t.text :father_n 
      t.text :father_rf 
      t.text :mother
      t.text :mother_pb
      t.date :mother_db
      t.text :mother_res
      t.text :mother_job
      t.text :mother_n 
      t.text :mother_rf
      t.date :date_drawn 
      t.text :declaration
      t.text :registrar 
      t.text :secretary
      t.date :date_done

      t.timestamps
    end
  end
end
