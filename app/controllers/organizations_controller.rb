class OrganizationsController < ApplicationController

  def index
    @organizations = Organization.all

  end

  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.new(organization_params)
    if @organization.save
      flash[:notice] = "You have successfully registered!"
      redirect_to organization_path(@organization)
    else
      flash[:notice] = "FAILURE"
      render :new
    end
  end

  def show
    @organization = Organization.find(params['id'])
  end

  protected
  def organization_params
    params.require(:organization).permit(:name, :description, :contact_first_name, :contact_last_name, :contact_email)
  end
end
