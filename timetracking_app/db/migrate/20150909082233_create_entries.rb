class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :minutes
      t.integer :hours
      t.integer :project
      t.references :project, index: true
      t.text :comments
      t.datetime :date
      t.timestamps
    end
  end
end
