class InfantHealths < ActiveRecord::Migration[5.2]
  def change
    create_table :infant_healths do |t|
      t.integer :hospital_id
      t.integer :new_born_id

      t.string :term
      t.string :fsb 
      t.string :msb
      t.string :still_birth_cause

      t.decimal :agpar_scor_1, precision: 4, scale: 2
      t.decimal :agpar_scor_5, precision: 4, scale: 2
      t.decimal :weight, precision: 7, scale: 2
      t.decimal :length, precision: 4, scale: 2
      t.decimal :head_circumference, precision: 4, scale: 2

      t.string :resuscitation
      t.string :abnormalities
      t.string :art

      t.timestamps
    end
  end
end
