class CreateCocktailsAndIngredients < ActiveRecord::Migration
  def change

    create_table :cocktails do |t|
      t.string :name
      t.integer :price
      t.belongs_to :user
    end

    create_table :cocktail_ingredients do |t|
      t.belongs_to :cocktail
      t.belongs_to :ingredient
    end

    create_table :ingredients do |t|
      t.string :name
    end

    create_table :users do |t|
      t.string :name
    end

  end
end
