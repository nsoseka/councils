class AddAgeToMaternalHealths < ActiveRecord::Migration[5.2]
  def change
    add_column :maternal_healths, :age, :integer
  end
end
