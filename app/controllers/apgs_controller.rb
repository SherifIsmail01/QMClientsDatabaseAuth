class ApgsController < ApplicationController
	def index
		puts params
		year_id = params[:id]
		@year = Year.find_by_id(year_id)
		@apgs = Year.find_by_id(year_id).apgs
	end

	def new
		@apg = Apg.new
		year_id = params[:year_id]
		@year = Year.find_by_id(year_id)
	end

	def create
		@apg = Apg.new(apg_params)
		@apg.year_id = params[:id]
		if 	@apg.save
			flash[:alert] = "Apg created"
			redirect_to show_apg_path(@apg)
		else
			flash[:alert] = @apg.errors.full_messages.join(", ")
		end
	end

	def import
		Apg.import(params[:file])
		redirect_to apgs_path
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
