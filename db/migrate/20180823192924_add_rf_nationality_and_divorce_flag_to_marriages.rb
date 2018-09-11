class AddRfNationalityAndDivorceFlagToMarriages < ActiveRecord::Migration[5.2]
  def change
    add_column :marriages, :wife_n, :text
    add_column :marriages, :wife_rf, :text
    add_column :marriages, :divorced, :boolean, default: false
  end
end

