class HomeController < ApplicationController
  def index
    @education = Education.all
    @experience = Experience.all
  end
end
