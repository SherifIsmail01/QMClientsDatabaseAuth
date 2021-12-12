class OtherFilesController < ApplicationController
	def index
		puts params
		year_id = params[:id]
		@year = Year.find_by_id(year_id)
		@other_files = Year.find_by_id(year_id).other_files
	end

	def new
		
	end

	def create
		
	end

	def import
		OtherFile.import(params[:file])
		redirect_to other_files_path
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
