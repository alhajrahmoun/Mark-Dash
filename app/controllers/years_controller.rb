class YearsController < ApplicationController
	def new
		@year = Year.new
	end

	def create
		@year = Year.new(year_params)
		if @year.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def show
		@year = Year.find(params[:id])
	end

	private
	def year_params
		params.require(:year).permit(:title)
	end
end
