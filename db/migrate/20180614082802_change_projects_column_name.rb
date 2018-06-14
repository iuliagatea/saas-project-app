class ChangeProjectsColumnName < ActiveRecord::Migration
  def change
    rename_column :payments, :tenant, :tenant_id
  end
end
