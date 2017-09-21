class SessionsController < ApplicationController
  def new
  end

  def create
    org = Organization.find_by(name: session_params[:organization_name])
    employee = Employee.find_by(email: session_params[:email].downcase)

    if org.present?
      if employee.authenticate(session_params[:password])
        self.current_employee = employee
        redirect_to shifts_path
      end
    else
      flash[:danger] = "An error occured.. Try again!"
      render 'new'
    end
  end

  def destroy
    reset_session
    redirect_to root_path
  end

  private

  def session_params
    params.require(:session).permit(
      :organization_name, :email, :password
    )
  end
end
