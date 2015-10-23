class ExperiencesController < ApplicationController
  def index
    @experience = Experience.all
  end

  def show
    @experience = Experience.find(params[:id])
  end

  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(experiences_params)
    if @education.save
      redirect_to experience_path, success: 'You have successfuly created an experience'
    else
      render :new
    end
  end

  def edit
    @experience = Experience.find(params[:id])
  end

  def update
    @experience = Experience.find(params[:id])
    respond_to do |format|
      if @experience.update(experiences_params)
        format.html { redirect_to @experience, notice: 'The experience has been updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @experience = Experience.find(params[:id])
    @experience.destroy
    redirect_to experience_path, success: 'You have successfully deleted the experience entry.'
  end

  private

  def experiences_params 
    params.require(:experiences).permit(:title, :description, :date)
  end
end
