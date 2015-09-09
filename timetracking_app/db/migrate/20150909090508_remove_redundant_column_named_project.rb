class RemoveRedundantColumnNamedProject < ActiveRecord::Migration
  def change
  	remove_column :entries, :project
  end
end
