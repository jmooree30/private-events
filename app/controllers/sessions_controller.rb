class SessionsController < ApplicationController

    def new
    end 

    def create
      user = User.find_by(name: params[:session][:name])
      log_in user
      flash[:info] = "Sign in successful"
      redirect_to root_path
    end

    def destroy 
      log_out
      flash[:info] = "Sign out successful"
      redirect_to root_path
    end 

end

