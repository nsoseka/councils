class Marriages < ActiveRecord::Migration[5.2]
  def change
    create_table :marriages do |t|
      t.integer :council_id 
      t.text :certificate_number
      t.text :husband
      t.text :wife
      t.date :appearance_date
      t.date :husband_db
      t.text :husband_pb
      t.text :husband_job
      t.text :husband_n
      t.text :husband_rf
      t.text :husband_res
      t.text :husband_f
      t.text :husband_m
      t.date :wife_db
      t.text :wife_pb
      t.text :wife_job
      t.text :husband_n
      t.text :husband_rf
      t.text :wife_res
      t.text :wife_f
      t.text :wife_m
      t.text :marriage_ownership
      t.text :marriage_type
      t.text :objections_raised
      t.text :husband_fh 
      t.text :wife_fh
      t.text :husband_w 
      t.text :wife_w
      t.text :drawn_by
      t.text :registrar
      t.text :secretary
      t.text :drawn_at 
      t.date :drawn_on

      t.timestamps
    end
  end
end
