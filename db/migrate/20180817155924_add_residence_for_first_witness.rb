class AddResidenceForFirstWitness < ActiveRecord::Migration[5.2]
  def change
    add_column :deaths, :fw_residence, :text
  end
end
