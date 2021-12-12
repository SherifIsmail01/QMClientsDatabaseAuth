class ConfirmationsController < ApplicationController
	def index
		puts params
		year_id = params[:id]
		@year = Year.find_by_id(year_id)
		@confirmations = Year.find_by_id(year_id).confirmations
	end

	def new
		
	end

	def create
		
	end

	def import
		Confirmation.import(params[:file])
		redirect_to confirmations_path
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
