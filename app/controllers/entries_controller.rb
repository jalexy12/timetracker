class EntriesController < ApplicationController
	def index
		@date = DateTime.now
		 @project = Project.find params[:project_id] 
		 @entries = @project.entries_for(@date)		
	end
	def show
	end
	
	def new 
		@project = Project.find params[:project_id]
		@entry = @project.entries.new
	end

end
