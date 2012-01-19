class HuddlersCardController < ApplicationController
  before_filter :authenticate_user! #ensures that the user is signed in

	def reverse_posts()
		
		Reversed_Posts = []
		@post = Post.all
		length = @post.length
		iterator = length

		for i in @post do
			Reversed_Posts[iterator] = i
			iterator = iterator - 1 
		end

		return Reversed_Posts
	end		
	
	def card
    render :layout => 'application.html.erb'
    @posts = reverse_posts()
  end

end
