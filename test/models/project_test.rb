require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  should validate_presence_of(:title)
  should validate_presence_of(:description)
  should validate_presence_of(:advance_description)
  should validate_presence_of(:live_url)
end
