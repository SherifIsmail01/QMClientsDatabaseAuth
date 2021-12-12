class QbReportsController < ApplicationController
	def index
		puts params
		year_id = params[:id]
		@year = Year.find_by_id(year_id)
		@qb_reports = Year.find_by_id(year_id).qb_reports
	end

	def new
		
	end

	def create
		
	end

	def import
		QbReport.import(params[:file])
		redirect_to qb_reports_path
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
