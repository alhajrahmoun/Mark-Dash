class YearsController < ApplicationController
	before_action :authenticate_user!
	before_action :years_find

	def new
		@year = Year.new
	end

	def create
		@year = Year.new(year_params)
		@year.user_id = current_user.id
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

	def years_find
		@years = Year.where("user_id = #{current_user.id}")
	end
end
