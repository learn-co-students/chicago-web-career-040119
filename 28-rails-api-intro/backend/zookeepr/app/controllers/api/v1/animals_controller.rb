class Api::V1::AnimalsController < ApplicationController
  def index
    @animals = Animal.all
    render json: @animals
  end

  def create
    @animal = Animal.new(animal_params)
    if @animal.save
      render json: @animal
    end


  end

  def animal_params
    params.require("animal").permit("name", "species", "gender")
  end
end
