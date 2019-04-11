class CreateDesserts < ActiveRecord::Migration[5.2]
  def change
    create_table :desserts do |t|
      t.string :name
      t.integer :price
      t.integer :rating
      t.string :type
    end
  end
end
