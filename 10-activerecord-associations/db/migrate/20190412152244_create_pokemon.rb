class CreatePokemon < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemon do |t|
      t.string :species
      t.string :nickname
      t.string :poketype
      t.integer :level
      t.integer :trainer_id
      t.integer :dex_number
    end
  end
end
