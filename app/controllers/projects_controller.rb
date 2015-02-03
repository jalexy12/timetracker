class ProjectsController < ApplicationController
  def index
  	@projects = Project.last_created_projects(5)
  end

  def show
	unless @project = Project.find_by(id: params[:id])  
		render 'no_projects_found'
  	end
  end

end
