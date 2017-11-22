class UsersController < ApplicationController

    def index
        @user = User.all
    end

    def show
        @user = User.find(params[:id])
        @past = @user.past_events
        @future = @user.future_events
    end 

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
          flash[:info] = "Account created"
          redirect_to root_path
        else
          flash[:info] = "Something went wrong"
          redirect_to new_user_path
        end 
    end

    private

    
  def user_params
    params.require(:user).permit(:name, :password)
  end

end
