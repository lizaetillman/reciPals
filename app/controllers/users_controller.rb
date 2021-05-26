class UsersController < ApplicationController
    before_action :set_current_user, only: [:show]

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:username] = @user.username
            redirect_to user_path(current_user)
            # byebug
        else
            redirect_to :root
        end
    end

    def show #must be in block to show in V, used before action
        @user = params[:id]
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end

    def set_current_user
        @current_user = current_user
    end

end
