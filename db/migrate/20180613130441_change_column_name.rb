class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :payments, :tenant_id, :tenant
  end
end
