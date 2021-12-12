class SchedulesController < ApplicationController
	def index
		puts params
		year_id = params[:id]
		@year = Year.find_by_id(year_id)
		@schedules = Year.find_by_id(year_id).schedules
	end

	def new
		
	end

	def create
		
	end

	def import
		Schedule.import(params[:file])
		redirect_to schedules_path
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
