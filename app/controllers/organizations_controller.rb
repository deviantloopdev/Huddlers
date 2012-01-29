class OrganizationsController < ApplicationController
  def show
    @org_profile = Organization.find(params[:id])
    if @org_profile == nil
      render :action => 'new'
    end
  end
  
  def index
    @org = Organization.where(:user_id => current_user.id)
  end
  
  def new
    @organization = Organization.new(:user_id => current_user.id)
  end

  def create
    @organization = Organization.new(params[:organization])
    if @organization.save
      flash[:notice] = "Successfully created painting."
      # redirect_to @organization.gallery
      redirect_to :controller => 'organizations'
    else
      render :action => 'new'
    end
  end

  def edit
    @organization = Organization.find(params[:id])
  end

  def update
    @organization = Organization.find(params[:id])
    
    if @organization.update_attributes(params[:organization])
      # flash[:notice] = "Successfully updated painting."
      # # redirect_to @organization.gallery
      redirect_to :controller => 'organizations'
    else
      render :action => 'edit'
    end
  end

  def destroy
    @organization = Organization.find(params[:id])
    @organization.destroy
    flash[:notice] = "Successfully destroyed painting."
    redirect_to :controller => 'organizations'
  end
end
