class TaxesController < ApplicationController
	def index
		puts params
		year_id = params[:id]
		@year = Year.find_by_id(year_id)
		@taxes = Year.find_by_id(year_id).taxes
	end

	def new
		
	end

	def create
		
	end

	def import
		Tax.import(params[:file])
		redirect_to taxes_path
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
