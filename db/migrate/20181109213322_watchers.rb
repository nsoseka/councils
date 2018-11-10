class Watchers < ActiveRecord::Migration[5.2]
  def change
    create_table :watchers do |t|
      t.string :name 
      t.string :phone_number 
      t.string :password 
      t.string :password_digest
      t.string :password_confirmation
      t.string :email 
      t.string :role, default: "watcher"
      t.string :sector, default: "company"

      t.timestamps
    end
  end
end
