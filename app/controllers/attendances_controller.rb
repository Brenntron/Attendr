class AttendancesController < ApplicationController
  before_action :load_attendance

  def create
    if @attendance.save
      redirect_to students_path, notice: "Attendane has been noted."
    else
      flash.alert = "Please fix the errors below to continue."
      render :new
    end
  end

  private

  def load_attendance
    @attendance = Attendance.new
    if params[:attendance].present?
      @attendance.assign_attributes(attendance_params)
    end
  end

  def attendance_params
    params.require(:attendance).permit(:date, :student_id)
  end
end
