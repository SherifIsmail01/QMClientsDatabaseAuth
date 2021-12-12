class ReportDraftsController < ApplicationController
	def index
		puts params
		year_id = params[:id]
		@year = Year.find_by_id(year_id)
		@report_drafts = Year.find_by_id(year_id).report_drafts
	end

	def new
		
	end

	def create
		
	end

	def import
		ReportDraft.import(params[:file])
		redirect_to report_drafts_path
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
