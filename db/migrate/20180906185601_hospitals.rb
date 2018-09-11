class Hospitals < ActiveRecord::Migration[5.2]
  def change
    create_table :hospitals do |t|
      t.text :username
      t.text :name
      t.text :phone_number
      t.text :email
      t.text :password
      t.text :password_confirmation
      t.text :password_reset
      t.text :password_digest
      t.date :password_reset_date
      t.boolean :verified?, default: false
      t.boolean :email_verified?, default: false
      t.integer :council_id
      t.text :code

      t.timestamps
    end
  end
end
