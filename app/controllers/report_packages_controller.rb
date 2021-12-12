class ReportPackagesController < ApplicationController
	def index
		puts params
		year_id = params[:id]
		@year = Year.find_by_id(year_id)
		@report_packages = Year.find_by_id(year_id).report_packages
	end

	def new
		
	end

	def create
		
	end

	def import
		ReportPackage.import(params[:file])
		redirect_to report_packages_path
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
