class Project < ActiveRecord::Base
	has_many :entries
	
	def self.iron_find(id)
		where(id: id).first	
	end

	def self.clean_old
		destroy_date = Time.new - 7.days
		old_posts = where("created_at < ?", destroy_date)
		old_posts.destroy_all
	end

	def self.last_created_projects(numprojects)
		Project.order(created_at: :desc).limit(numprojects)
	end

	def entries_for(date)
		entries.where(date: date.beginning_of_month..date.end_of_month)
	end

	def how_many_hours(month, year)
		date = DateTime.new(year, month)
		entry = entries_for(date)
		@hours = 0 
		@minutes = 0
		entry.each do |i|
			@hours += i.hours
			@minutes += i.minutes

		end
		@minutes/60 + @hours
	end

end
