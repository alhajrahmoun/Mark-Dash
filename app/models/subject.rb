class Subject < ActiveRecord::Base
	belongs_to :year

	def subjects
		year.subjects
	end

	
end
