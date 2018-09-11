class ChangeCouncilsNameToAgents < ActiveRecord::Migration[5.2]
  def change
    rename_table :local_councils, :agents 
    rename_column :agents, :sub_division_id, :council_id
  end
end
