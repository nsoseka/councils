class CauseOfDeaths < ActiveRecord::Migration[5.2]
  def change
    create_table :cause_of_deaths do |t|
      t.integer :deceased_id 
      t.integer :hospital_id 
      t.integer :age
      t.string :cause  
      t.string :sex

      t.timestamps
    end
  end
end

