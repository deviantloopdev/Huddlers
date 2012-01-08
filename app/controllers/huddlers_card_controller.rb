class HuddlersCardController < ApplicationController
  before_filter :authenticate_user! #ensures that the user is signed in
  
  def card
    render :layout => 'application.html.erb' 
		@post = Post.all
		
	end

end
