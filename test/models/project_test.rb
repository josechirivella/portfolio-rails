require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  should validate_presence_of(:title)
  should validate_presence_of(:description)
  should validate_presence_of(:advance_description)
  should validate_presence_of(:live_url)
  should validate_presence_of(:background_image_url)

  context "a project" do
    subject { projects(:one) }
    setup do
      @project = projects(:one)
    end
  end
end
