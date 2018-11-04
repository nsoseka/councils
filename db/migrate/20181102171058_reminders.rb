class Reminders < ActiveRecord::Migration[5.2]
  def change
    create_table :hospital_reminders do |t|
      t.integer :hospital_id
      t.integer :count
      t.string :period
      t.date :date

      t.timestamps
    end

    create_table :council_reminders do |t|
      t.integer :council_id
      t.integer :certificate_id
      t.integer :count
      t.string :certificate #bc#dc

      t.timestamps
    end
  end
end
