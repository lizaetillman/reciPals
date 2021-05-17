class RecipesController < ApplicationController
    
    def index
        @recipes = Recipe.all
    end

    def show
        @recipe = Recipe.find(params[:id])
    end

    def new
        @recipe = Recipe.new
    end

    def create 
        @recipe = Recipe.create(params[:recipe])
    end

    def edit
    end

    def update 
    end

    def destroy 
    end

    private

    def recipes_params
        params.require(:recipes).permit(:title, :description)
    end

end