class AddStatusColumnToContacts < ActiveRecord::Migration
  def change
  	add_column :contacts, :state, :boolean
  end
end
