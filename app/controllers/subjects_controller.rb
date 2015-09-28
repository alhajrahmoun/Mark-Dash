class SubjectsController < ApplicationController
	before_filter :find_year
	before_filter :find_subject, only: [:edit, :update]
	def index
		@subjects = Subject.where("year_id = #{@year.id}")
	end

	def new
		@subject = Subject.new
	end

	def create
		@subject = Subject.new(subject_params)
		@subject.year_id = @year.id
		if @subject.save
			redirect_to year_subjects_path
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @subject.update(subject_params)
			redirect_to year_path(@year)
		else
			render 'new'
		end
	end

	private
	def subject_params
		params.require(:subject).permit(:name,:mark)
	end

	def find_year
		@year = Year.find(params[:year_id])
	end

	def find_subject
		@subject = Subject.find(params[:id])
	end
end
