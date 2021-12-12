class PortalsController < ApplicationController
	def index
		puts params
		year_id = params[:id]
		@year = Year.find_by_id(year_id)
		@portals = Year.find_by_id(year_id).portals
	end

	def new
		
	end

	def create
		
	end

	def import
		Portal.import(params[:file])
		redirect_to portals_path
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
