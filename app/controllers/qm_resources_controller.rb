class QmResourcesController < ApplicationController
	def index
		@qm_resources = QmResource.all
	end

	def new
		@qm_resource = QmResource.new()
	end

	def create
		@qm_resource = QmResource.new(qm_resource_params)
		if 	@qm_resource.save
			flash[:alert] = "Resource saved successfully"
			redirect_to _path(qm_resource)
		else
			flash[:alert] = @qm_resource.errors.full_messages.join(", ")
			redirect_to user_path
		end
	end

	private
	def qm_resource_params
		params.require(:qm_resource).permit(:templates, :training)
	end
end
