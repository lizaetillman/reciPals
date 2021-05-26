class RecipesController < ApplicationController
    
    def index
        @cookbook = Cookbook.find(params[:cookbook_id])
        @recipes = @cookbook.recipes
    end

    def show
        @recipe = Recipe.find(params[:id])
    end

    def new
        @recipe = Recipe.new
    end

    def create 
        @recipe = Recipe.new(recipe_params)
        byebug
        @recipe.user_id = User.find_by(:username => session[:username]).id
            if @recipe.save
                redirect_to cookbook_recipe_path(@recipe)
            else
                render 'new'
            end
    end

    def edit
    end

    def update 
    end

    def destroy 
    end

    private

    def recipe_params
        params.require(:recipe).permit(:title, :description)
    end

end