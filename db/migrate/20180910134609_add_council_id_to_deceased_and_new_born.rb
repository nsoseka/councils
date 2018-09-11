class AddCouncilIdToDeceasedAndNewBorn < ActiveRecord::Migration[5.2]
  def change
    add_column :deceaseds, :council_id, :integer
    add_column :new_borns, :council_id, :integer
  end
end
