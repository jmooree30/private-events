class SessionsController < ApplicationController

    def new
    end 

    def create
    if user = User.find_by(name: params[:session][:name])
       log_in user
        flash[:info] = "Sign in successful"
        redirect_to root_path
      else 
        flash[:info] = "Something went wrong"
        redirect_to root_path
      end 
    end

    def destroy 
      log_out
      flash[:info] = "Sign out successful"
      redirect_to root_path
    end 

end

