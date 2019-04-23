class IngredientsController < ApplicationController

  get "/ingredients" do
    @ingredients = Ingredient.all
    erb :"ingredients/index"
  end

  get "/ingredients/new" do
    erb :"ingredients/new"
  end

  get "/ingredients/:id" do
    @ingredient = Ingredient.find(params[:id])
    erb :"ingredients/show"
  end

  post "/ingredients" do
    ingredient = Ingredient.create(params[:ingredient])
    redirect "/ingredients/#{ingredient.id}"
  end

  get "/ingredients/:id/edit" do
    @ingredient = Ingredient.find(params[:id])
    erb :"ingredients/edit"
  end

  patch "/ingredients/:id" do
    ingredient = Ingredient.find(params[:id])
    ingredient.update(params[:ingredient])
    redirect "/ingredients/#{ingredient.id}"
  end

  delete "/ingredients/:id" do
    ingredient = Ingredient.find(params[:id])
    ingredient.destroy
    redirect "/ingredients"
  end
end
