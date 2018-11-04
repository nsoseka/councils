class VaccinationCalendars < ActiveRecord::Migration[5.2]
  def change
    create_table :vaccination_calendars do |t|
      t.integer :new_born_id
      t.integer :hospital_id 
      
      t.boolean :at_birth, default: false
      t.boolean :six_weeks, default: false
      t.boolean :ten_weeks, default: false
      t.boolean :fourteen_weeks, default: false
      t.boolean :six_months, default: false
      t.boolean :nine_months, default: false
      t.boolean :one_year, default: false
      t.boolean :recent_appointment, default: false

      t.date :at_birth_d
      t.date :six_weeks_d
      t.date :ten_weeks_d
      t.date :fourteen_weeks_d
      t.date :six_months_d
      t.date :nine_months_d
      t.date :one_year_d
      t.date :recent_appointment_d

      t.timestamps
    end
  end
end
