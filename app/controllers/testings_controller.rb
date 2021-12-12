class TestingsController < ApplicationController
	def index
		puts params
		year_id = params[:id]
		@year = Year.find_by_id(year_id)
		@testings = Year.find_by_id(year_id).testings
	end

	def new
		
	end

	def create
		
	end

	def import
		Testing.import(params[:file])
		redirect_to testings_path
	end

	def show
		
	end

	def edit
		
	end

	def update
		
	end

	def destroy
		
	end
end
