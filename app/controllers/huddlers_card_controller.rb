class HuddlersCardController < ApplicationController
  before_filter :authenticate_user! #ensures that the user is signed in

	def reverse_posts()
    
=begin
		length = @post.length
		@reversed_posts = Array.new(length)
		@post = Post.all
		iterator = length

		for i in @post do
			reversed_posts[iterator] = i
			iterator = iterator - 1 
		end

		return @reversed_posts
=end

	end		
	
	def card
    @user_profile = User.find(params[:id])   
    @posts = Post.where(:user_id => params[:id])

    render :layout => 'application.html.erb'
    #@posts = reverse_posts()
  end

end
