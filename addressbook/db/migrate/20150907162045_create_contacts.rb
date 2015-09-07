class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.text :address
      t.string :email
      t.integer :phone
      t.timestamps
    end
  end
end
