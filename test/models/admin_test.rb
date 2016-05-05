require 'test_helper'

class AdminTest < ActiveSupport::TestCase
  should validate_presence_of(:email)
  should validate_presence_of(:encrypted_password)
end
