class AddVerificationDefaultsAgents < ActiveRecord::Migration[5.2]
  def change
    change_column :agents, :verified?, :boolean, default: false
    change_column :agents, :email_verified?, :boolean, default: false
  end
end
