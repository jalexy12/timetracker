class EntriesController < ApplicationController
	def index
		@date = DateTime.now
		 @project = Project.find params[:project_id] 
		 @entries = @project.entries_for(@date)
		
	end

end
