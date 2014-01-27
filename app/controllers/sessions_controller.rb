class SessionsController < ApplicationController
    def new
        #kirjautuminen
    end

    def create
        user = User.find_by username: params[:username]

        if user.nil? or not user.authenticate params[:password]
            redirect_to :back, notice: "User #{params[:username]} does not exist!"
        else
          session[:user_id] = user.id
          redirect_to user, notice: "Welcome back!"
        end
    end

    def destroy
        session[:user_id] = nil

        redirect_to :root
    end
end
