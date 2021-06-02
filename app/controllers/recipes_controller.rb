class RecipesController < ApplicationController
    
    def index
        @cookbook = Cookbook.find(params[:cookbook_id])
        @recipes = @cookbook.recipes
    end

    def show
        @cookbook = Cookbook.find(params[:cookbook_id])
        @recipe = Recipe.find(params[:id])
    end

    def new
        @recipe = Recipe.new
    end

    def create 
        @cookbook = Cookbook.find(params[:cookbook_id])
        @recipe = Recipe.new(recipe_params)
        @recipe.cookbook_id = @cookbook.id
        @recipe.user_id = User.find_by(:username => session[:username]).id
            if @recipe.save
                redirect_to cookbook_recipe_path(@cookbook, @recipe)
            else
                flash[:messages] = @recipe.errors.full_messages
                redirect_to @cookbook
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
        params.permit(:title, :description)
    end

end