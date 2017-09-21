class ShiftsController < ApplicationController
  before_action :require_logged_in

  def new
    @shift = Shift.new
  end

  def index
    @shifts = current_employee.shifts
  end

  def show

  end

  def create
    @organization = current_employee.organization
    @shift = @organization.shifts.new(shift_params)

    if @shift.save
      redirect_to @shift
    else
      render 'new'
    end
  end

  private

  def shift_params
    params.permit(:time_from, :time_to, :place_id)
  end
end
