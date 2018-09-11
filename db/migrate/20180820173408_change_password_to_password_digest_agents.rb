class ChangePasswordToPasswordDigestAgents < ActiveRecord::Migration[5.2]
  def change
    rename_column :agents, :password, :password_digest
  end
end
