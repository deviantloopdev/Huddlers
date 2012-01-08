class PostController < ApplicationController
 # respond_to :html, :js
 
 # def index
  end

  def flash
  end

  def new
  end

  def create
    @post = Post.new(params[:posts])
    @post.save
    #respond_with @post
  end
  
  def show
    @post = Post.find(params[:id])
    #respond_with @post
  end

  def edit
    @post = Post.find(params[:id])
    #respond_with @post
  end
 
  def update
    @post = Post.find(params[:id])
    @post.update_attributes(params(:posts))
    #respond_with @post
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    #respond_with @post
  end

end
