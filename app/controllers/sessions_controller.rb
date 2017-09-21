class SessionsController < ApplicationController
  def new
  end

  def create
    employee = Employee.find_by(email: params[:session][:email].downcase)
    if employee && employee.authenticate(params[:session][:password])
      # Log the employee in
    else
      flash[:danger] = "An error occured.. Try again!"
      render 'new'
    end
  end

  def destroy
  end
end
