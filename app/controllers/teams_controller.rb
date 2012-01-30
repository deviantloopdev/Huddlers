class TeamsController < ApplicationController
  def show
    @team = Team.find(params[:id])
    # if @org_profile.nil?
      # redirect_to :controller => 'organizations'
    # end
  end
  
  def index
  end
  
  def add
    @team = Team.find(params[:id])
    if @team.users.where(:id => current_user.id).empty?
      @team.users << current_user
      render :controller => 'teams', :action => 'show', :id => params[:id]
    else
      render :controller => 'teams', :action => 'show', :id => params[:id]
    end
  end
  
  def remove
    @team = Team.find(params[:id])
    @team.users.delete(User.find_by_id(current_user.id))
    # flash[:notice] = "Successfully destroyed organization."
    render :controller => 'teams', :action => 'show', :id => params[:id]
  end
  
  def new
    @team = Team.new
  end

  def create
    @team = Team.new(params[:organization])
    @team.users << current_user
    if @team.save
      # flash[:notice] = "Successfully created organization."
      # redirect_to @organization.gallery
      redirect_to :controller => 'teams'
    else
      render :action => 'new'
    end
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])
    
    if @team.update_attributes(params[:organization])
      # flash[:notice] = "Successfully updated painting."
      # # redirect_to @organization.gallery
      redirect_to :controller => 'teams'
    else
      render :action => 'edit'
    end
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    flash[:notice] = "Successfully destroyed team."
    redirect_to :controller => 'teams'
  end
  
end
