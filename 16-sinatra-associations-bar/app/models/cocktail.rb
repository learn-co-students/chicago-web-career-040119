class Cocktail < ActiveRecord::Base
  belongs_to :user
  has_many :cocktail_ingredients
  has_many :ingredients, through: :cocktail_ingredients
end
