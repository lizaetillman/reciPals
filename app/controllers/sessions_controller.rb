class SessionsController < ApplicationController
before_action :redirect_already_logged_in, only: [:new]
before_action :dynamic_background, only: [:new]

    def omniauth
        user = User.from_omniauth(request.env['omniauth.auth'])
        # byebug
        if user.valid?
            session[:user_id] = user.id
            redirect_to user_path(user.id)
        else
            flash[:message] = user.errors.full_messages.join(", ")
            redirect_to '/login'
        end
    end

    def login
    end

    def create
        @user = User.find_by(username: params[:user][:username])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            redirect_to :login, notice: "Please try again. Your login was not successful."
        end 
    end

    def logout
        session.clear
        redirect_to :login
    end

    private

    # def dynamic_background
    #     @backgroundimg = ["https://rb.gy/d2bjqr", "https://rb.gy/93exoq", "https://rb.gy/axbchi", "https://rb.gy/ypujiv" ].sample(1).join(', ')
    # end

    # def auth_hash
    #     request.env["omniauth.auth"]
    # end

end
