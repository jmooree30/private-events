class InvitationsController < ApplicationController

    def index
    end 

    def new 
        @user = User.find(params[:id])
        @events = current_user
    end

    def create
      @invitation = Invitation.new(invitation_params)
      if @invitation.save 
        flash[:info] ="Invitation sent"
        redirect_to root_path
      else
      flash[:info] = "Something went wrong"
      redirect_to root_path 
      end 
    end 

    def show
    end 

    private

    def invitation_params
      params.permit(:user_id)
    end

end
