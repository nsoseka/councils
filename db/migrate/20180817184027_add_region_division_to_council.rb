class AddRegionDivisionToCouncil < ActiveRecord::Migration[5.2]
  def change
    add_column :local_councils, :administrative_region_id, :integer 
    add_column :local_councils, :division_id, :integer
  end
end
