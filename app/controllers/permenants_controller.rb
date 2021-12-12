class PermenantsController < ApplicationController
	def index
		puts params
		year_id = params[:id]
		@year = Year.find_by_id(year_id)
		@permenants = Year.find_by_id(year_id).permenants
	end

	def new
		
	end

	def create
		
	end

	def import
		Permenant.import(params[:file])
		redirect_to permenants_path
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
