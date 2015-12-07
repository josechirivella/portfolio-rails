class ProjectsController < ApplicationController
  def index
    @project = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to project_path, success: 'You have successfully created a project.'
    else
      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'You have successfully updated the project.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to project_path, success: 'You have successfully destroyed the project.'
  end

  private

  def project_params
    params.require(:project).permit(:title, :description, :advance_description,:live_url, :source_code_link, :image_file_name)
  end
end
