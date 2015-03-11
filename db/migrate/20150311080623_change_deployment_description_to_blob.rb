class ChangeDeploymentDescriptionToBlob < ActiveRecord::Migration
  def self.up
    change_column :deployments, :description, :binary
  end

  def self.down
    change_column :deployments, :description, :text
  end
end
