class BankStatementsController < ApplicationController
	def index
		puts params
		year_id = params[:id]
		@year = Year.find_by_id(year_id)
		@bank_statements = Year.find_by_id(year_id).bank_statements
	end

	def new
		@bank_statements = BankStatement.new
		year_id = params[:year_id]
		@year = Year.find_by(id: year_id)
	end

	def create
		new_bank_statement = BankStatement.new(bank_statement_params)
		new_bank_statement.years.build
		new_bank_statement.year_id = params[:id]
		if 	new_bank_statement.save
			redirect_to auditor_path(new_client.auditor)
		else
			flash[:alert] = new_client.errors.full_messages.join(", ")
			redirect_to auditor_path(new_client.auditor)
		end
	end

	def import
		BankStatement.import(params[:file])
		redirect_to bank_statements_path
	end

	def show
		bank_statement_id = params[:id]
		@bank_statement = BankStatement.find_by(id: bank_statement_id)
		year_id = @bank_statement.year_id
		@year = Year.find_by(id: year_id)
	end

	def edit
		
	end

	def update
		
	end

	def destroy
		
	end
end

