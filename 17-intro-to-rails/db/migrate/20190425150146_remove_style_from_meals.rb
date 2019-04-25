class RemoveStyleFromMeals < ActiveRecord::Migration[5.2]
  def change
    remove_column :meals, :style, :string
  end
end
