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
      render :controller => 'organizations', :action => 'show', :id => params[:id]
    else
      render :controller => 'organizations', :action => 'show', :id => params[:id]
    end
  end
  
  def remove
    @organization = Organization.find(params[:id])
    @organization.users.delete(User.find_by_id(current_user.id))
    # flash[:notice] = "Successfully destroyed organization."
    render :controller => 'organizations', :action => 'show', :id => params[:id]
  end
  
  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.new(params[:organization])
    @organization.users << current_user
    if @organization.save
      @activity = Activity.new(:user_id => current_user.id, :organization_id => @organization.id,
        :organization_name => @organization.organization_name, :description => @organization.description,
        :contact_number => @organization.contact_number, :street_address => @organization.street_address,
        :city => @organization.city, :state => @organization.state, :zipcode => @organization.zipcode,
        :website => @organization.website, :trait => "ORGANIZATION")
      @activity.save
        
      # flash[:notice] = "Successfully created organization."
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
      @activity = Activity.find_by_organization_id(@organization.id)
      @activity.update_attributes(:user_id => current_user.id, :organization_id => @organization.id,
        :organization_name => @organization.organization_name, :description => @organization.description,
        :contact_number => @organization.contact_number, :street_address => @organization.street_address,
        :city => @organization.city, :state => @organization.state, :zipcode => @organization.zipcode,
        :website => @organization.website, :trait => "ORGANIZATION")
      # @activity.save
      
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
    flash[:notice] = "Successfully destroyed organization."
    redirect_to :controller => 'organizations'
  end
end
