class OrganizationsController < ApplicationController
  def show
    @organization = Organization.find(params[:id])
    # if @org_profile.nil?
      # redirect_to :controller => 'organizations'
    # end
  end
  
  def index
  end
  
  def add
    @organization = Organization.find(params[:id])
    if @organization.users.where(:id => current_user.id).empty?
      @organization.users << current_user
      redirect_to :controller => 'organizations', :action => 'show', :id => '@organization.id'
    else
      reender :controller => 'organizations', :action => 'show', :id => '@organization.id'
    end
  end
  
  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.new(params[:organization])
    @organization.users << current_user
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
