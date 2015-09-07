class Project < ActiveRecord::Base

	def self.ironFind(value)
		where(id: value).first
	end

	def self.find_last_1_hours
		date = Date.current
		last_1_h = date - 1.hours 
		old_projects = where('created_at > ?', last_1_h)
		old_projects.each do |item|
			puts item.id
			end 
	end
	def self.show_all
		all.each do |item|
			puts item.id
		end
	end


end
