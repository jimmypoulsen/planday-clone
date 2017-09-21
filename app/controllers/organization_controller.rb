class OrganizationController < ApplicationController
  def index
    @organizations = Organization.where name: 'Progras'
  end

  def new
    @user = Organization.new
  end

  def create
    org = Organization.create(name: organization_params[:name], employee: current_employee)

    if org.save?
      redirect_to organization_path
    else
      redirect_to root
    end
  end

  def destoy

  end

  private

  def organization_params
    params.require(:organization).permit(:name)
  end
end
