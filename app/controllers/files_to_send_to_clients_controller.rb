class FilesToSendToClientsController < ApplicationController
	def index
		puts params
		year_id = params[:id]
		@year = Year.find_by_id(year_id)
		@files_to_send_to_clients = Year.find_by_id(year_id).files_to_send_to_clients
	end

	def new
		
	end

	def create
		
	end

	def import
		FilesToSendToClient.import(params[:file])
		redirect_to files_to_send_to_clients_path
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
