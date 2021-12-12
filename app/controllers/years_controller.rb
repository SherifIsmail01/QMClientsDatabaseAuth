class YearsController < ApplicationController

	def index
		puts params
		client_id = params[:id]
		@client = Client.find_by_id(client_id)
		@years = Client.find_by_id(client_id).years
		auditor_id = Client.find_by_id(client_id).auditor_id
		@auditor = Auditor.find_by_id(auditor_id)
	end

	def new
		@year = Year.new
		client_id = params[:client_id]
		@client = Client.find_by_id(client_id)
	end

	def create
		@year = Year.new(year_params)
		@year.client_id = params[:id]
		if 	@year.save
			flash[:alert] = "Year created"
			redirect_to year_path(@year)
		else
			flash[:alert] = @year.errors.full_messages.join(", ")
		end
	end

	def show
		puts params
		year_id = params[:id]
		@year = Year.find_by(id: year_id)
		client_id = Year.find_by_id(year_id).client_id
		@client = Client.find_by(id: client_id)
		@bank_statements = Year.find_by_id(year_id).bank_statements
		@bod_munites = Year.find_by_id(year_id).bod_munites
		@confirmations = Year.find_by_id(year_id).confirmations
		@files_to_send_to_clients = Year.find_by_id(year_id).files_to_send_to_clients
		@other_files = Year.find_by_id(year_id).other_files
		@permenants = Year.find_by_id(year_id).permenants
		@portals = Year.find_by_id(year_id).portals
		@qb_reports = Year.find_by_id(year_id).qb_reports
		@report_packages = Year.find_by_id(year_id).report_packages
		@report_drafts = Year.find_by_id(year_id).report_drafts
		@schedules = Year.find_by_id(year_id).schedules
		@taxes = Year.find_by_id(year_id).taxes
		@testings = Year.find_by_id(year_id).testings
	end

	def destroy
		puts params
		year_id = params[:id]
		client_id = Year.find_by_id(year_id).client_id
		@year = Year.find_by(id: year_id)
		@year.destroy
		@client = Client.find_by(id: client_id)
		redirect_to client_years_path(@client)
	end

	private
	def year_params
		params.require(:year).permit(:number)
	end

end


