class ChangeColumnAttributeOfState < ActiveRecord::Migration
  def change
	change_column_default :contacts, :state, false
  end
end
