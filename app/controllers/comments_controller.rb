class CommentsController < ApplicationController

	def index
		@comment = Comment.all
	end

	def create
		@comment = Comment.new()
		@comment.save
	end

	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
	end

end
