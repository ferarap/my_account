class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :grocery_list
      t.string :name
      t.float :price
      t.integer :units
      t.float :total

      t.timestamps
    end
  end
end
