class CreateCouncils < ActiveRecord::Migration[5.2]
  def change
    create_table :councils do |t|
      t.text :name 
      t.integer :sub_division_id
      t.text :code

      t.timestamps
    end
  end
end
