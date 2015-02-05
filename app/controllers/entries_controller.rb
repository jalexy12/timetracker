class EntriesController < ApplicationController
	def index
		@date = DateTime.now
		 @project = Project.find params[:project_id] 
		 @entries = @project.entries_for(@date)		
	end
	def show
	end
	def destroy
		@project = Project.find params[:project_id]
		@entry = @project.entries.find(params[:id])
		@entry.destroy
		redirect_to action: "index", controller: "entries", project_id: @project.id
	end
	
	def update 
		@project = Project.find params[:project_id]
		@entry = @project.entries.find(params[:id])
		if @entry.update_attributes(entry_params)
			redirect_to action: "index", controller: "entries", project_id: @project.id
		else
			render 'edit'
		end
	end
	def edit
		@project = Project.find params[:project_id]
		@entry = @project.entries.find params[:id]
	end

	def new
		@project = Project.find params[:project_id]
		@entry = @project.entries.new
	end

	def create
		@project = Project.find params[:project_id]
		@entry = @project.entries.new(entry_params)
		if @entry.save
			flash[:notice] = "Entry created successfully"
			Usermailer.entry_created(@project).deliver
			redirect_to action: "index", controller: "entries", project_id: @project.id
		else
			flash[:error] = "Entry not created"
			render 'new'
		end
	end
	private 
	def entry_params
		params.require(:entry).permit(:hours, :minutes, :date)
	end


end
