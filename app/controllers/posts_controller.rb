class PostsController < ApplicationController
   respond_to :html, :js

  def index
  	@post = Post.all
		
	end

  def flash
  end

  def new
  end
# add_column :posts, :body, :string
# add_column :posts, :author_id, :integer
# add_column :posts, :recipient_id, :integer
# add_column :posts, :friend_vs_group, :bool
# add_column :posts, :status_update?, :bool
  def create
    
    @post = Post.new(
    :id => 2,
    :body => params[:texty])
    @post.save
    render :nothing => true
  end

  def show
    #@post = Post.find(params[:id])
    #respond_with @post
  end

  def edit
    #@post = Post.find(params[:id])
    #respond_with @post
  end

  def update
    #@post = Post.find(params[:id])
    #@post.update_attributes(params(:posts))
    #respond_with @post
  end

  def destroy
    #@post = Post.find(params[:id])
    #@post.destroy
    #respond_with @post
  end

end
