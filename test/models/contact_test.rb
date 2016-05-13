require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  should validate_presence_of(:name)
  should validate_presence_of(:email)
  should validate_presence_of(:message)

  should allow_value('hello@domain.com').for(:email)
end