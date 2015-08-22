require 'simplecov'
SimpleCov.start 'rails'

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'capybara/rails'
require 'capybara/poltergeist'
require 'email_spec'

Capybara.server_port = 31337
Capybara.current_driver = :poltergeist

VCR.configure do |c|
  c.cassette_library_dir = 'test/vcr_cassettes'
  # c.allow_http_connections_when_no_cassette = true
  c.ignore_localhost = true
  c.hook_into :webmock
end

class ActiveSupport::TestCase

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
  self.use_transactional_fixtures = false

  def logged_in_session
    { current_user_id: users(:one).id }
  end
end

class ActionController::TestCase
  def assert_invalid_model(model_name)
    assert assigns[model_name], "Should have a #{model_name}"
    assert assigns[model_name].invalid?, "Should have an invalid #{model_name}"
  end

  def assert_saved_model(model_name)
    assert assigns[model_name], "Should have a #{model_name}"
    assert assigns[model_name].persisted?, "#{model_name} should be persisted"
  end
end

class ActionDispatch::IntegrationTest
  # Make the Capybara DSL available in all integration tests
  include Capybara::DSL

  include EmailSpec::Helpers
  include EmailSpec::Matchers

  def login(user = users(:one), password = default_password)
    visit login_path
    fill_in "Email", with: user.email
    fill_in "Password", with: password
    click_button "Login"
  end
end
