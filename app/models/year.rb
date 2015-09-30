class Year < ActiveRecord::Base
	has_many :subjects
	belongs_to :user

	def year_average(year)
		@subs = Subject.where("year_id = #{year.id} AND mark >= 60")
		avg = @subs.average(:mark)
	end

	def year_sum(year)
		@subs = Subject.where("year_id = #{year.id}")
		sum = @subs.sum(:mark)
	end

	def sub_count(year)
		count=0
		year.subjects.each do |y|
			count+=1 if y.mark >=60
		end
		count
	end

	def success?(year)
		sub_count(year) == 14
	end
end
