class CocktailsController < ApplicationController

  get "/cocktails" do
    @cocktails = Cocktail.all

    erb :"cocktails/index"
    # so smt
  end

  get "/cocktails/new" do
    @users = User.all.sort_by { |u| u.name }
    @ingredients = Ingredient.all
    erb :"cocktails/new"
  end

  get "/cocktails/:id" do
    @cocktail = Cocktail.find(params[:id])
    erb :"cocktails/show"
  end

  post "/cocktails" do
    binding.pry
    cocktail = Cocktail.create(params[:cocktail])
    `say "made a new cocktail called #{cocktail.name}"`
    redirect "/cocktails/#{cocktail.id}"
  end

  get "/cocktails/:id/edit" do
    @cocktail = Cocktail.find(params[:id])
    @users = User.all.sort_by { |u| u.name }
    @ingredients = Ingredient.all
    erb :"cocktails/edit"
  end

  patch "/cocktails/:id" do
    cocktail = Cocktail.find(params[:id])
    cocktail.update(params[:cocktail])
    redirect "/cocktails/#{cocktail.id}"
  end

  delete "/cocktails/:id" do
    cocktail = Cocktail.find(params[:id])
    cocktail.destroy
    redirect "/cocktails"
  end

end
