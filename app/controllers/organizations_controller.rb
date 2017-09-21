class OrganizationsController < ApplicationController
  def index
    @organizations = Organization.where name: 'Progras'
  end

  def new
    @organization = Organization.new
    @employee = Employee.new
  end

  def create
    org = Organization.new(organization_params.except(:employee))
    employee = Employee.new(organization_params[:employee])

    if org.save
      group = org.employee_groups.create(name: 'All')
      employee.organization = org
      employee.employee_group = group
      employee.save!

      redirect_to org
    else
      redirect_to root
    end
  end

  def show

  end

  def destoy

  end

  private

  def organization_params
    params.require(:organization).permit(
      :name,
      employee: [:email, :firstname, :lastname, :password, :password_confirmation]
    )
  end
end
