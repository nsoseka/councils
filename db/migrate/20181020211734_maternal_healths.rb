class MaternalHealths < ActiveRecord::Migration[5.2]
  def change
    create_table :maternal_healths do |t|
      t.integer :hospital_id
      t.integer :new_born_id
      
      t.string :birth_attendant
      t.string :place_of_delivery 
      t.integer :gestational_age

      t.decimal :duration_of_labour
      t.string :labour_on_set
      t.string :type_of_delivery
      t.string :placenta_separation
      # t.string :delivery_method
      t.string :placenta
      t.string :membranes
      t.string :nature_of_cord
      t.integer :vessels
      t.decimal :blood_loss, precision: 6, scale: 2
      t.string :source_of_pph
      t.string :episiotomy
      t.string :laceration
      t.integer :sutures
      # t.string :blood_pressure
      # t.integer :pulse
      # t.integer :respiratory_rate
      # t.decimal :temperature, precision: 3, scale: 1
      t.string :uterus
      t.string :mothers_condition
      t.string :post_partum_complications

      t.timestamps
    end
  end
end
