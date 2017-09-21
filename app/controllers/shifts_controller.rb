class ShiftsController < ApplicationController
  def index
    @shifts = current_employee.shifts
  end
end
