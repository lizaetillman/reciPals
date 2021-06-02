class CookbooksController < ApplicationController

    def index
        @cookbooks = Cookbook.order_by_name
    end

    def show 
        @cookbook = Cookbook.find(params[:id])
        @recipe = Recipe.new
        @recipes = @cookbook.recipes
    end

    def new
        @cookbook = Cookbook.new
    end
    
    def create 
        @cookbook = Cookbook.new(cookbook_params)
            if @cookbook.save
                redirect_to @cookbook
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

    def cookbook_params
        params.require(:cookbook).permit(:title, :description)
    end

end
