class BetterVerificationNames < ActiveRecord::Migration[5.2]
  def change
    rename_column :agents, :verified?, :verified 
    rename_column :agents, :email_verified?, :email_verified
    rename_column :hospitals, :verified?, :verified 
    rename_column :hospitals, :email_verified?, :email_verified
  end
end

