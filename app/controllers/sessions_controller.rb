class SessionsController < ApplicationController
  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.find_by(email: params[:session][:email].downcase)
    if @employee&.authenticate(params[:session][:password])
      self.current_employee = @employee
      redirect_to shifts_path
    else
      flash[:danger] = "An error occured.. Try again!"
      render 'new'
    end
  end

  def destroy
    reset_session
  end
end
