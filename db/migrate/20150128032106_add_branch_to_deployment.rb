class AddBranchToDeployment < ActiveRecord::Migration
  def self.up
    add_column :deployments, :branch, :string, :default => "master", :null => false
  end

  def self.down
    remove_column :deployments, :branch
  end
end
