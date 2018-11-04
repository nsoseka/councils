class AddContactToAppointments < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :contact, :string
  end
end
