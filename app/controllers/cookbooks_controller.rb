class CookbooksController < ApplicationController

    def index
        @cookbooks = Cookbook.all
    end

    def show 
        @cookbook = Cookbook.find(params[:id])
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

    def cookbook_params
        params.require(:cookbook).permit(:title, :description)
    end

end
