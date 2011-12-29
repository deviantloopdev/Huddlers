class PicturesController < ApplicationController
  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(params[:picture])
    if @picture.save
      flash[:notice] = "Successfully created picture."
      render :action => 'index'
    else
      render :action => 'new'
    end
  end

  def edit
    @picture = Picture.find(params[:id])
  end
  
  def index
    @picture = Picture.all
  end

  def update
    @picture = Picture.find(params[:id])
    if @picture.update_attributes(params[:picture])
      flash[:notice] = "Successfully updated picture."
      render :action => 'index' # TODO: REDIRECT INSTEAD!
    else
      render :action => 'edit'
    end
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    flash[:notice] = "Successfully destroyed picture."
    redirect_to 'index'  # TODO: REDIRECT INSTEAD!
  end
end
