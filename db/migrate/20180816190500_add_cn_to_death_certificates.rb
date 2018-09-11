class AddCnToDeathCertificates < ActiveRecord::Migration[5.2]
  def change
    add_column :deaths, :certificate_number, :string
  end
end
