class Deceaseds < ActiveRecord::Migration[5.2]
  def change
    create_table :deceaseds do |t|
      t.integer :hospital_id
      t.text :d_name
      t.date :d_db 
      t.text :d_pb
      t.date :d_dd
      t.text :d_pd
      t.text :d_job 
      t.text :marital_status
      t.text :sex

      t.text :f_name
      t.text :f_res
      
      t.text :m_name 
      t.text :m_res
      
      t.integer :num_children
      t.text :contact
      t.text :contact_tel
      t.text :contact_lang

      t.timestamps
    end
  end
end
