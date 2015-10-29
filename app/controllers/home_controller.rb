class HomeController < ApplicationController
  def index
    @education = Education.all
    @experience = Experience.all
    @project = Project.all
  end
end
