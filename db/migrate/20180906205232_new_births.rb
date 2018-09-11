class NewBirths < ActiveRecord::Migration[5.2]
  def change
    create_table :new_borns do |t|
      t.integer :hospital_id
      t.text :child_code
      t.text :c_name
      t.date :c_db
      t.text :c_pb
      t.text :sex

      t.text :f_name 
      t.text :f_res
      t.date :f_db
      t.text :f_pb
      t.text :f_tel

      t.text :m_name 
      t.text :m_res
      t.date :m_db 
      t.text :m_pb
      t.text :m_tel
      t.text :attended_clinic

      t.timestamps
    end
  end
end
