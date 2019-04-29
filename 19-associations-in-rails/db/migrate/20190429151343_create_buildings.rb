class CreateBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :address
      t.integer :year
      t.references :architect, foreign_key: true

      t.timestamps
    end
  end
end
