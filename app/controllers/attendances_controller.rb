class AttendancesController < ApplicationController
    def create
      @attendance = Attendance.new(attendance_params)
      @attendance.user_id = current_user.id
      if @attendance.save
        flash[:success] = "Joined Event"
        redirect_to root_path
      else
        flash[:danger] = "Unable to Join Event"
        redirect_to root_path
      end
    end

  private

  def attendance_params
    params.permit(:event_id)
  end
end
