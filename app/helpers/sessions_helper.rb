# frozen_string_literal: true

module SessionsHelper
  def current_employee
    @current_employee ||= Employee.find_by(id: session[:employee_id]) if session[:employee_id].present?
    p @current_employee
  end

  def current_employee=(e)
    @current_employee ||= e if e.is_a? Employee
    @current_employee ||= Employee.find_by(id: e) if e.is_a? Integer
    session[:employee_id] = @current_employee&.id
  end

  def require_logged_in
    if current_employee.nil?
      flash[:error] = 'Login required'
      redirect_to login_path
    end
  end

  def require_not_logged_in
    redirect_to dashboard_path if current_employee.is_a? Employee
  end

  def set_context
    return if current_employee.nil?
    @organization = current_employee.organization
    @employee_group = current_employee.employee_group
  end

  def deny_access
    flash[:error] = 'Access Denied'
    redirect_to root_path
  end
end
