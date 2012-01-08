class FansController < ApplicationController

	def index
		@fan = Fan.all
	end

	def create
		@fan = Fan.new()
		@fan.save
	end

	def destroy
		@fan = Fan.find(params[:id])
		@fan.destroy
	end

end
