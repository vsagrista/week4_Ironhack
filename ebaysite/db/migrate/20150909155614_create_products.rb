class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.datetime :deadline
      t.references :user, index: true
      t.timestamps
    end
  end
end
