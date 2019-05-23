class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :gender
      t.string :species
      t.timestamps
    end
  end
end
