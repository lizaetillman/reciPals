class RecipesController < ApplicationController
    
    def index
        @recipes = Recipe.all
    end

    def show
        @recipe = Recipe.find(params[:id])
    end

    def new
    end
    
    def create #no view
    end

    def edit
    end

    def update #no view
    end

    def destroy #no view
    end

    private

    def recipes_params
        params.require(:recipes).permit(:title, :description)
    end

end