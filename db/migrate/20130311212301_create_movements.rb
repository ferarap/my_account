class CreateMovements < ActiveRecord::Migration
  def change
    create_table :movements do |t|
      t.datetime :date      
      t.string :subject
      t.integer :amount
      t.string :type_movement

      t.timestamps
    end
  end
end
