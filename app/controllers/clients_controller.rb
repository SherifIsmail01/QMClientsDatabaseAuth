class ClientsController < ApplicationController

	def index
		puts params
		@auditors = Auditor.all
		auditor_id = params[:id]
		@auditor = Auditor.find_by_id(auditor_id)
		@clients = @auditor.clients
	end

	def new
		@client = Client.new
		auditor_id = params[:auditor_id]
		@auditor = Auditor.find_by(id: auditor_id)
	end


	def create
		new_client = Client.new(client_params)
		new_client.years.build
		new_client.auditor_id = params[:id]
		if 	new_client.save
			redirect_to auditor_path(new_client.auditor)
		else
			flash[:alert] = new_client.errors.full_messages.join(", ")
			redirect_to auditor_path(new_client.auditor)
		end
	end

	def show
		client_id = params[:id]
		@client = Client.find_by(id: client_id)
		auditor_id = @client.auditor_id
		@auditor = Auditor.find_by(id: auditor_id)
	end

	def edit
		auditor_id = params[:id]
		@auditor = Auditor.find_by_id(auditor_id)

		client_id = params[:id]
		@client = Client.find_by_id(client_id)

	end

	def update
		client_id = params[:id]
		client = Client.find_by(id: client_id)
		auditor_id = client.auditor_id
		auditor = Auditor.find_by(id: auditor_id)
		
		if client.update(client_params)
			flash[:alert] = "Updated successfully"
			redirect_to client_profile_path(client)
		else 
			flash[:alert] = client.errors.full_messages.join(", ")
			redirect_to client_profile_path(client)
		end
	end

	def destroy
		client_id = params[:id]
		client = Client.find_by(id: client_id)
		client.destroy
		auditor_id = params[:auditor_id]
		auditor = Auditor.find_by(id: auditor_id)
		redirect_to auditor_clients_path(auditor)
	end

	private
	def client_params
		params.require(:client).permit(:name, :year_end, :status)
	end
end


