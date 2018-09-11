class DropSomeColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :sub_divisions, :administrative_region_id
    remove_column :local_councils, :administrative_region_id
    remove_column :local_councils, :division_id
  end
end
