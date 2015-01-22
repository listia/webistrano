class AddPrecheckToRoles < ActiveRecord::Migration
  def self.up
    add_column :roles, :precheck, :boolean, :default => true
  end

  def self.down
    remove_column :roles, :precheck
  end
end
