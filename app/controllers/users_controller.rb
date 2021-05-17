class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:username] = @user.username
        #     redirect_to :devtop
        # else
        #     redirect_to :root
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end

end
