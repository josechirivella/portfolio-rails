require 'test_helper'

class ExperienceTest < ActiveSupport::TestCase
  should validate_presence_of(:title)
  should validate_presence_of(:company)
  should validate_presence_of(:description)
  should validate_presence_of(:from_date)
  # should validate_presence_of(:until)
end
