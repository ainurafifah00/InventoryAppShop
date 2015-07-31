class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.text :description
      t.integer :quantity
      t.boolean :shipping

      t.timestamps null: false
    end
  end
end