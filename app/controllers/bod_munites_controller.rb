class BodMunitesController < ApplicationController
	def index
		puts params
		year_id = params[:id]
		@year = Year.find_by_id(year_id)
		@bod_munites = Year.find_by_id(year_id).bod_munites
	end

	def new
		
	end

	def create
		
	end

	def import
		BodMunite.import(params[:file])
		redirect_to bod_munites_path
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
