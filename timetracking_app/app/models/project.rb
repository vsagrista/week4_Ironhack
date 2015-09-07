class Project < ActiveRecord::Base

	def self.ironFind(value)
		where(id: value).first
	end

	def self.find_last_3_hours
		date = Date.current
		last_3_h = date - 3.hours 
		where('created_at > ?', last_3_h)
	end
end
