class AuditorsController < ApplicationController

	def index
		@auditors = Auditor.all
	end

	def new
		@auditor = Auditor.new
	end

	def create
		auditor = Auditor.new(auditor_params)
		if 	auditor.save
			flash[:alert] = "Auditor saved successfully"
			redirect_to auditors_path(auditor)
		else
			flash[:alert] = auditor.errors.full_messages.join(", ")
			redirect_to new_auditor_path
		end
	end

	def show
		auditor_id = params[:id]
		@auditor = Auditor.find_by(id: auditor_id)
	end

	def edit
		auditor_id = params[:id]
		@auditor = Auditor.find_by(id: auditor_id)
	end

	def update
		auditor_id = params[:id]
		auditor = Auditor.find_by(id: auditor_id)
		if auditor.update(auditor_params)
			redirect_to auditor_path(auditor)
		else
			flash[:error] = auditor.errors.full_messages.join(", ")
			redirect_to edit_auditor_path(auditor)
		end
	end

	def destroy
		auditor_id = params[:id]
		auditor = Auditor.find_by(id: auditor_id)
		auditor.destroy
		redirect_to auditors_path
	end

	private
	def auditor_params
		params.require(:auditor).permit(:name)
	end

end
