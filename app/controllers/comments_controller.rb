class CommentsController < ApplicationController

	def index
		@comment = Comment.all
	end

	def create
		@comment = Comment.new(
		:body => params[:comment_body],
		:post_id => params[:the_post_id],
    :type_of => params[:the_type_of]
    )
		@comment.save
    render :nothing => true
	end

	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
	end

end
