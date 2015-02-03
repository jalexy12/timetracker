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

end
