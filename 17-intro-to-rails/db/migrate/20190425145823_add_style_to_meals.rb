class AddStyleToMeals < ActiveRecord::Migration[5.2]
  def change
    add_column :meals, :style, :string
  end
end
