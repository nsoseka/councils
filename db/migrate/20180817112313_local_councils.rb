class LocalCouncils < ActiveRecord::Migration[5.2]
  def change
    create_table :local_councils do |t|
      t.text :username
      t.text :full_names
      t.text :phone_number
      t.text :email
      t.text :password 
      t.text :password_confirmation
      t.boolean :verified?
      t.boolean :email_verified?
      t.integer :sub_division_id
      t.text :code

      t.timestamps
    end
  end
end
