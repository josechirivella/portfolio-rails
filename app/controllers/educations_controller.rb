class EducationsController < ApplicationController
  def index
    @education = Education.all
  end

  def show
    @education = Education.find(params[:id])
  end

  def new
    @education = Education.new
  end

  def create
    @education = Education.new(educations_params)
    if @education.save
      redirect_to education_path, success: "You have successfuly created an education entry."
    else
      render :new
    end
  end

  def edit
    @education = Education.find(params[:id])
  end

  def update
    @education = Education.find(params[:id])
    respond_to do |format|
      if @education(educations_params)
        format.html { redirect_to @education, notice: "The education has been updated." }
      else
        format.html { render :edit }
      end
  end

  def destroy
    @education = Education.find(params[:id])
    @education.destroy
    redirect_to education_path, success: "You have successfuly deleted the education entry."
  end

  private

  def educations_params 
    params.require(:educations).permit(:title, :description, :date)
  end
end
