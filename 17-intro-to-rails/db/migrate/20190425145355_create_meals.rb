class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :name
      t.integer :price
      t.boolean :gluten_free

      t.timestamps
    end
  end
end
